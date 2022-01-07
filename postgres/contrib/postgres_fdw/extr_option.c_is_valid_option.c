
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ optcontext; scalar_t__ keyword; } ;
typedef TYPE_1__ PgFdwOption ;
typedef scalar_t__ Oid ;


 int Assert (TYPE_1__*) ;
 TYPE_1__* postgres_fdw_options ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool
is_valid_option(const char *keyword, Oid context)
{
 PgFdwOption *opt;

 Assert(postgres_fdw_options);

 for (opt = postgres_fdw_options; opt->keyword; opt++)
 {
  if (context == opt->optcontext && strcmp(opt->keyword, keyword) == 0)
   return 1;
 }

 return 0;
}
