
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int Min (int,int) ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int
internal_text_pattern_compare(text *arg1, text *arg2)
{
 int result;
 int len1,
    len2;

 len1 = VARSIZE_ANY_EXHDR(arg1);
 len2 = VARSIZE_ANY_EXHDR(arg2);

 result = memcmp(VARDATA_ANY(arg1), VARDATA_ANY(arg2), Min(len1, len2));
 if (result != 0)
  return result;
 else if (len1 < len2)
  return -1;
 else if (len1 > len2)
  return 1;
 else
  return 0;
}
