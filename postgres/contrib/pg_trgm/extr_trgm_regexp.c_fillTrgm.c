
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bytes; } ;
typedef TYPE_1__ trgm_mb_char ;
typedef int trgm ;


 int MAX_MULTIBYTE_CHAR_LEN ;
 int compact_trigram (int *,char*,int) ;

__attribute__((used)) static void
fillTrgm(trgm *ptrgm, trgm_mb_char s[3])
{
 char str[3 * MAX_MULTIBYTE_CHAR_LEN],
      *p;
 int i,
    j;


 p = str;

 for (i = 0; i < 3; i++)
 {
  if (s[i].bytes[0] != 0)
  {
   for (j = 0; j < MAX_MULTIBYTE_CHAR_LEN && s[i].bytes[j]; j++)
    *p++ = s[i].bytes[j];
  }
  else
  {

   *p++ = ' ';
  }
 }


 compact_trigram(ptrgm, str, p - str);
}
