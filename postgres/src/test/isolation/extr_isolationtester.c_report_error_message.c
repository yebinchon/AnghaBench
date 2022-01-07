
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* errormsg; } ;
typedef TYPE_1__ Step ;


 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int stdout ;

__attribute__((used)) static void
report_error_message(Step *step)
{
 if (step->errormsg)
 {
  fprintf(stdout, "%s\n", step->errormsg);
  free(step->errormsg);
  step->errormsg = ((void*)0);
 }
}
