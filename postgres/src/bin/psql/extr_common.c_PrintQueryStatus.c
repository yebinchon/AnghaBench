
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {scalar_t__ format; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int vars; scalar_t__ logfile; scalar_t__ queryFout; TYPE_2__ popt; int quiet; } ;
typedef int PGresult ;


 char* PQcmdStatus (int *) ;
 scalar_t__ PQoidValue (int *) ;
 scalar_t__ PRINT_HTML ;
 int SetVariable (int ,char*,char*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int fputs (char*,scalar_t__) ;
 int html_escaped_print (char*,scalar_t__) ;
 TYPE_3__ pset ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
PrintQueryStatus(PGresult *results)
{
 char buf[16];

 if (!pset.quiet)
 {
  if (pset.popt.topt.format == PRINT_HTML)
  {
   fputs("<p>", pset.queryFout);
   html_escaped_print(PQcmdStatus(results), pset.queryFout);
   fputs("</p>\n", pset.queryFout);
  }
  else
   fprintf(pset.queryFout, "%s\n", PQcmdStatus(results));
 }

 if (pset.logfile)
  fprintf(pset.logfile, "%s\n", PQcmdStatus(results));

 snprintf(buf, sizeof(buf), "%u", (unsigned int) PQoidValue(results));
 SetVariable(pset.vars, "LASTOID", buf);
}
