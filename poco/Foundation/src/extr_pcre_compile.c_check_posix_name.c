
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_uchar ;


 scalar_t__ STRNCMP_UC_C8 (int const*,char const*,unsigned int) ;
 int* posix_name_lengths ;
 char* posix_names ;

__attribute__((used)) static int
check_posix_name(const pcre_uchar *ptr, int len)
{
const char *pn = posix_names;
register int yield = 0;
while (posix_name_lengths[yield] != 0)
  {
  if (len == posix_name_lengths[yield] &&
    STRNCMP_UC_C8(ptr, pn, (unsigned int)len) == 0) return yield;
  pn += posix_name_lengths[yield] + 1;
  yield++;
  }
return -1;
}
