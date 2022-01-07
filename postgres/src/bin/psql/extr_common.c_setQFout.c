
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queryFoutPipe; int * queryFout; } ;
typedef int FILE ;


 int fclose (int *) ;
 int openQueryOutputFile (char const*,int **,int*) ;
 int pclose (int *) ;
 TYPE_1__ pset ;
 int restore_sigpipe_trap () ;
 int set_sigpipe_trap_state (int) ;
 int * stderr ;
 int * stdout ;

bool
setQFout(const char *fname)
{
 FILE *fout;
 bool is_pipe;


 if (!openQueryOutputFile(fname, &fout, &is_pipe))
  return 0;


 if (pset.queryFout && pset.queryFout != stdout && pset.queryFout != stderr)
 {
  if (pset.queryFoutPipe)
   pclose(pset.queryFout);
  else
   fclose(pset.queryFout);
 }

 pset.queryFout = fout;
 pset.queryFoutPipe = is_pipe;


 set_sigpipe_trap_state(is_pipe);
 restore_sigpipe_trap();

 return 1;
}
