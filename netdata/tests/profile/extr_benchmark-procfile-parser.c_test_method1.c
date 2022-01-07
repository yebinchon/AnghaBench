
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procfile ;


 int PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ;
 int begin_tsc () ;
 unsigned long end_tsc () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int * procfile_readall1 (int *) ;
 int * procfile_reopen (int *,char*,char*,int ) ;
 int stderr ;

unsigned long test_method1(void) {
 static procfile *ff = ((void*)0);

 ff = procfile_reopen(ff, "/proc/self/status", " \t:,-()/", PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
 if(!ff) {
  fprintf(stderr, "Failed to open filename\n");
  exit(1);
 }

 begin_tsc();
 ff = procfile_readall1(ff);
 unsigned long c = end_tsc();

 if(!ff) {
  fprintf(stderr, "Failed to read filename\n");
  exit(1);
 }

 return c;
}
