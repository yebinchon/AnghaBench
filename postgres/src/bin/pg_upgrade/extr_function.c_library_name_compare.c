
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int dbnum; } ;
typedef TYPE_1__ LibraryInfo ;


 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
library_name_compare(const void *p1, const void *p2)
{
 const char *str1 = ((const LibraryInfo *) p1)->name;
 const char *str2 = ((const LibraryInfo *) p2)->name;
 int slen1 = strlen(str1);
 int slen2 = strlen(str2);
 int cmp = strcmp(str1, str2);

 if (slen1 != slen2)
  return slen1 - slen2;
 if (cmp != 0)
  return cmp;
 else
  return ((const LibraryInfo *) p1)->dbnum -
   ((const LibraryInfo *) p2)->dbnum;
}
