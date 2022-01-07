
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; } ;
typedef TYPE_1__ trgm_mb_char ;
typedef int s ;
typedef scalar_t__ pg_wchar ;


 int MAX_MULTIBYTE_CHAR_LEN ;
 char* lowerstr (char*) ;
 int memcpy (int ,char*,int ) ;
 int memset (char*,int ,int) ;
 int pfree (char*) ;
 int pg_wchar2mb_with_len (scalar_t__*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
convertPgWchar(pg_wchar c, trgm_mb_char *result)
{

 char s[MAX_MULTIBYTE_CHAR_LEN + 1];






 if (c == 0)
  return 0;


 memset(s, 0, sizeof(s));
 pg_wchar2mb_with_len(&c, s, 1);
 memcpy(result->bytes, s, MAX_MULTIBYTE_CHAR_LEN);
 return 1;
}
