
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int expanded; } ;
struct TYPE_6__ {TYPE_1__ topt; } ;
typedef TYPE_2__ printQueryOpt ;
struct TYPE_7__ {int logfile; int * queryFout; scalar_t__ gfname; scalar_t__ g_expanded; TYPE_2__ popt; } ;
typedef int PGresult ;
typedef int FILE ;


 int disable_sigpipe_trap () ;
 int fclose (int *) ;
 int openQueryOutputFile (scalar_t__,int **,int*) ;
 int pclose (int *) ;
 int printQuery (int const*,TYPE_2__*,int *,int,int ) ;
 TYPE_3__ pset ;
 int restore_sigpipe_trap () ;

__attribute__((used)) static bool
PrintQueryTuples(const PGresult *results)
{
 printQueryOpt my_popt = pset.popt;


 if (pset.g_expanded)
  my_popt.topt.expanded = 1;


 if (pset.gfname)
 {
  FILE *fout;
  bool is_pipe;

  if (!openQueryOutputFile(pset.gfname, &fout, &is_pipe))
   return 0;
  if (is_pipe)
   disable_sigpipe_trap();

  printQuery(results, &my_popt, fout, 0, pset.logfile);

  if (is_pipe)
  {
   pclose(fout);
   restore_sigpipe_trap();
  }
  else
   fclose(fout);
 }
 else
  printQuery(results, &my_popt, pset.queryFout, 0, pset.logfile);

 return 1;
}
