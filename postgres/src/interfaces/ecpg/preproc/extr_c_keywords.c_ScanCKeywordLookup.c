
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_kw_len; int num_keywords; } ;


 char* GetScanKeyword (int,TYPE_1__*) ;
 int* ScanCKeywordTokens ;
 TYPE_1__ ScanCKeywords ;
 int ScanCKeywords_hash_func (char const*,size_t) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

int
ScanCKeywordLookup(const char *str)
{
 size_t len;
 int h;
 const char *kw;





 len = strlen(str);
 if (len > ScanCKeywords.max_kw_len)
  return -1;





 h = ScanCKeywords_hash_func(str, len);


 if (h < 0 || h >= ScanCKeywords.num_keywords)
  return -1;

 kw = GetScanKeyword(h, &ScanCKeywords);

 if (strcmp(kw, str) == 0)
  return ScanCKeywordTokens[h];

 return -1;
}
