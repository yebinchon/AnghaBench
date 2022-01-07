
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int issuffix; scalar_t__ affix; } ;
typedef TYPE_1__ CMPDAffix ;


 scalar_t__ strncmp (scalar_t__,char*,int) ;
 char* strstr (char*,scalar_t__) ;

__attribute__((used)) static int
CheckCompoundAffixes(CMPDAffix **ptr, char *word, int len, bool CheckInPlace)
{
 bool issuffix;


 if (*ptr == ((void*)0))
  return -1;

 if (CheckInPlace)
 {
  while ((*ptr)->affix)
  {
   if (len > (*ptr)->len && strncmp((*ptr)->affix, word, (*ptr)->len) == 0)
   {
    len = (*ptr)->len;
    issuffix = (*ptr)->issuffix;
    (*ptr)++;
    return (issuffix) ? len : 0;
   }
   (*ptr)++;
  }
 }
 else
 {
  char *affbegin;

  while ((*ptr)->affix)
  {
   if (len > (*ptr)->len && (affbegin = strstr(word, (*ptr)->affix)) != ((void*)0))
   {
    len = (*ptr)->len + (affbegin - word);
    issuffix = (*ptr)->issuffix;
    (*ptr)++;
    return (issuffix) ? len : 0;
   }
   (*ptr)++;
  }
 }
 return -1;
}
