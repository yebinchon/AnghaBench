
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int flags ;
typedef int FILE ;


 int SEEK_SET ;
 int _exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 scalar_t__ fseek (int *,unsigned long,int ) ;
 int perror (char*) ;

__attribute__((used)) static uint64_t get_kpageflags(unsigned long pfn)
{
 uint64_t flags;
 FILE *file;

 file = fopen("/proc/kpageflags", "r");
 if (!file) {
  perror("fopen kpageflags");
  _exit(1);
 }

 if (fseek(file, pfn * sizeof(flags), SEEK_SET)) {
  perror("fseek kpageflags");
  _exit(1);
 }

 if (fread(&flags, sizeof(flags), 1, file) != 1) {
  perror("fread kpageflags");
  _exit(1);
 }

 fclose(file);
 return flags;
}
