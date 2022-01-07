
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t max_kw_len; int (* hash ) (char const*,size_t) ;int num_keywords; } ;
typedef TYPE_1__ ScanKeywordList ;


 char* GetScanKeyword (int,TYPE_1__ const*) ;
 size_t strlen (char const*) ;
 int stub1 (char const*,size_t) ;

int
ScanKeywordLookup(const char *str,
      const ScanKeywordList *keywords)
{
 size_t len;
 int h;
 const char *kw;





 len = strlen(str);
 if (len > keywords->max_kw_len)
  return -1;






 h = keywords->hash(str, len);


 if (h < 0 || h >= keywords->num_keywords)
  return -1;







 kw = GetScanKeyword(h, keywords);
 while (*str != '\0')
 {
  char ch = *str++;

  if (ch >= 'A' && ch <= 'Z')
   ch += 'a' - 'A';
  if (ch != *kw++)
   return -1;
 }
 if (*kw != '\0')
  return -1;


 return h;
}
