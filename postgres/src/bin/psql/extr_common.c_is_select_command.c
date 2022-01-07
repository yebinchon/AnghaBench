
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;


 scalar_t__ PQmblen (char const*,int ) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ pg_strncasecmp (char const*,char*,int) ;
 TYPE_1__ pset ;
 char* skip_white_space (char const*) ;

__attribute__((used)) static bool
is_select_command(const char *query)
{
 int wordlen;




 for (;;)
 {
  query = skip_white_space(query);
  if (query[0] == '(')
   query++;
  else
   break;
 }




 wordlen = 0;
 while (isalpha((unsigned char) query[wordlen]))
  wordlen += PQmblen(&query[wordlen], pset.encoding);

 if (wordlen == 6 && pg_strncasecmp(query, "select", 6) == 0)
  return 1;

 if (wordlen == 6 && pg_strncasecmp(query, "values", 6) == 0)
  return 1;

 return 0;
}
