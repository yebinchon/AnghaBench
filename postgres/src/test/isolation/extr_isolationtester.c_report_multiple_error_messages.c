
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* data; } ;
struct TYPE_10__ {char* errormsg; int name; } ;
typedef TYPE_1__ Step ;
typedef TYPE_2__ PQExpBufferData ;


 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int report_error_message (TYPE_1__*) ;
 int stdout ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static void
report_multiple_error_messages(Step *step, int nextra, Step **extrastep)
{
 PQExpBufferData buffer;
 int n;

 if (nextra == 0)
 {
  report_error_message(step);
  return;
 }

 initPQExpBuffer(&buffer);
 appendPQExpBufferStr(&buffer, step->name);

 for (n = 0; n < nextra; ++n)
  appendPQExpBuffer(&buffer, " %s", extrastep[n]->name);

 if (step->errormsg)
 {
  fprintf(stdout, "error in steps %s: %s\n", buffer.data,
    step->errormsg);
  free(step->errormsg);
  step->errormsg = ((void*)0);
 }

 for (n = 0; n < nextra; ++n)
 {
  if (extrastep[n]->errormsg == ((void*)0))
   continue;
  fprintf(stdout, "error in steps %s: %s\n",
    buffer.data, extrastep[n]->errormsg);
  free(extrastep[n]->errormsg);
  extrastep[n]->errormsg = ((void*)0);
 }

 termPQExpBuffer(&buffer);
}
