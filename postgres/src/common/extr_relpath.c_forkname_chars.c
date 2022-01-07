
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ForkNumber ;


 size_t InvalidForkNumber ;
 size_t MAX_FORKNUM ;
 int * forkNames ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

int
forkname_chars(const char *str, ForkNumber *fork)
{
 ForkNumber forkNum;

 for (forkNum = 1; forkNum <= MAX_FORKNUM; forkNum++)
 {
  int len = strlen(forkNames[forkNum]);

  if (strncmp(forkNames[forkNum], str, len) == 0)
  {
   if (fork)
    *fork = forkNum;
   return len;
  }
 }
 if (fork)
  *fork = InvalidForkNumber;
 return 0;
}
