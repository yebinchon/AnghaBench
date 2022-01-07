
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ token; } ;
typedef TYPE_1__ datetkn ;


 int LOG ;
 scalar_t__ TOKMAXLEN ;
 int elog (int ,char*,char const*,scalar_t__,scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static bool
CheckDateTokenTable(const char *tablename, const datetkn *base, int nel)
{
 bool ok = 1;
 int i;

 for (i = 0; i < nel; i++)
 {

  if (strlen(base[i].token) > TOKMAXLEN)
  {

   elog(LOG, "token too long in %s table: \"%.*s\"",
     tablename,
     TOKMAXLEN + 1, base[i].token);
   ok = 0;
   break;
  }

  if (i > 0 &&
   strcmp(base[i - 1].token, base[i].token) >= 0)
  {
   elog(LOG, "ordering error in %s table: \"%s\" >= \"%s\"",
     tablename,
     base[i - 1].token,
     base[i].token);
   ok = 0;
  }
 }
 return ok;
}
