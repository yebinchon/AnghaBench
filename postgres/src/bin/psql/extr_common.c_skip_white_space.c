
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;


 int PQmblen (char const*,int ) ;
 scalar_t__ isspace (unsigned char) ;
 TYPE_1__ pset ;

__attribute__((used)) static const char *
skip_white_space(const char *query)
{
 int cnestlevel = 0;

 while (*query)
 {
  int mblen = PQmblen(query, pset.encoding);
  if (isspace((unsigned char) *query))
   query += mblen;
  else if (query[0] == '/' && query[1] == '*')
  {
   cnestlevel++;
   query += 2;
  }
  else if (cnestlevel > 0 && query[0] == '*' && query[1] == '/')
  {
   cnestlevel--;
   query += 2;
  }
  else if (cnestlevel == 0 && query[0] == '-' && query[1] == '-')
  {
   query += 2;





   while (*query)
   {
    if (*query == '\n')
    {
     query++;
     break;
    }
    query += PQmblen(query, pset.encoding);
   }
  }
  else if (cnestlevel > 0)
   query += mblen;
  else
   break;
 }

 return query;
}
