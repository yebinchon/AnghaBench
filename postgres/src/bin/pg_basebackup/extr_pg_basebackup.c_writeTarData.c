
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gzFile ;
typedef int FILE ;


 int exit (int) ;
 int fwrite (char*,int,int,int *) ;
 int get_gz_error (int *) ;
 int gzwrite (int *,char*,int) ;
 int pg_log_error (char*,char*,...) ;

__attribute__((used)) static void
writeTarData(



    FILE *tarfile, char *buf, int r, char *current_file)
{
 {
  if (fwrite(buf, r, 1, tarfile) != 1)
  {
   pg_log_error("could not write to file \"%s\": %m", current_file);
   exit(1);
  }
 }
}
