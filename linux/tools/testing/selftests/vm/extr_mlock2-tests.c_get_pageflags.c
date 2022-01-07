
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pfn ;
typedef int FILE ;


 int SEEK_SET ;
 int _exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 scalar_t__ fseek (int *,unsigned long,int ) ;
 unsigned long getpagesize () ;
 int perror (char*) ;

__attribute__((used)) static uint64_t get_pageflags(unsigned long addr)
{
 FILE *file;
 uint64_t pfn;
 unsigned long offset;

 file = fopen("/proc/self/pagemap", "r");
 if (!file) {
  perror("fopen pagemap");
  _exit(1);
 }

 offset = addr / getpagesize() * sizeof(pfn);

 if (fseek(file, offset, SEEK_SET)) {
  perror("fseek pagemap");
  _exit(1);
 }

 if (fread(&pfn, sizeof(pfn), 1, file) != 1) {
  perror("fread pagemap");
  _exit(1);
 }

 fclose(file);
 return pfn;
}
