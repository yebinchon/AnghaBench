
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef unsigned int Size ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 int FreeFile (int *) ;
 int MAP_HUGETLB ;
 scalar_t__ fgets (char*,int,int *) ;
 int sscanf (char*,char*,unsigned int*,char*) ;

__attribute__((used)) static void
GetHugePageSize(Size *hugepagesize, int *mmap_flags)
{







 *hugepagesize = 2 * 1024 * 1024;
 *mmap_flags = MAP_HUGETLB;
 {
  FILE *fp = AllocateFile("/proc/meminfo", "r");
  char buf[128];
  unsigned int sz;
  char ch;

  if (fp)
  {
   while (fgets(buf, sizeof(buf), fp))
   {
    if (sscanf(buf, "Hugepagesize: %u %c", &sz, &ch) == 2)
    {
     if (ch == 'k')
     {
      *hugepagesize = sz * (Size) 1024;
      break;
     }

    }
   }
   FreeFile(fp);
  }
 }

}
