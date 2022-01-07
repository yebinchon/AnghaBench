
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char*) ;
 int fprintf (int *,char*,size_t,size_t,char const*) ;
 int getpid () ;
 int setlinebuf (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void zend_jit_perf_map_register(const char *name, void *start, size_t size)
{
 static FILE *fp = ((void*)0);

 if (!fp) {
  char filename[64];

  sprintf(filename, "/tmp/perf-%d.map", getpid());
  fp = fopen(filename, "w");
  if (!fp) {
   return;
  }
     setlinebuf(fp);
 }
 fprintf(fp, "%zx %zx %s\n", (size_t)(uintptr_t)start, size, name);
}
