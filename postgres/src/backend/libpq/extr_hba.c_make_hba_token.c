
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; int quoted; } ;
typedef TYPE_1__ HbaToken ;


 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static HbaToken *
make_hba_token(const char *token, bool quoted)
{
 HbaToken *hbatoken;
 int toklen;

 toklen = strlen(token);

 hbatoken = (HbaToken *) palloc(sizeof(HbaToken) + toklen + 1);
 hbatoken->string = (char *) hbatoken + sizeof(HbaToken);
 hbatoken->quoted = quoted;
 memcpy(hbatoken->string, token, toklen + 1);

 return hbatoken;
}
