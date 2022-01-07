
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int sscanf (char*,char*,unsigned long*) ;

unsigned long default_huge_page_size(void)
{
 unsigned long hps = 0;
 char *line = ((void*)0);
 size_t linelen = 0;
 FILE *f = fopen("/proc/meminfo", "r");

 if (!f)
  return 0;
 while (getline(&line, &linelen, f) > 0) {
  if (sscanf(line, "Hugepagesize:       %lu kB", &hps) == 1) {
   hps <<= 10;
   break;
  }
 }

 free(line);
 fclose(f);
 return hps;
}
