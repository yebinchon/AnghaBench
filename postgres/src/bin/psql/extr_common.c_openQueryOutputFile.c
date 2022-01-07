
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char*) ;
 int pg_log_error (char*,char const*) ;
 int * popen (char const*,char*) ;
 int * stdout ;

bool
openQueryOutputFile(const char *fname, FILE **fout, bool *is_pipe)
{
 if (!fname || fname[0] == '\0')
 {
  *fout = stdout;
  *is_pipe = 0;
 }
 else if (*fname == '|')
 {
  *fout = popen(fname + 1, "w");
  *is_pipe = 1;
 }
 else
 {
  *fout = fopen(fname, "w");
  *is_pipe = 0;
 }

 if (*fout == ((void*)0))
 {
  pg_log_error("%s: %m", fname);
  return 0;
 }

 return 1;
}
