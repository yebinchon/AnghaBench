
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ keyword; scalar_t__ is_libpq_opt; } ;
typedef TYPE_1__ PgFdwOption ;


 int Assert (TYPE_1__*) ;
 TYPE_1__* postgres_fdw_options ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool
is_libpq_option(const char *keyword)
{
 PgFdwOption *opt;

 Assert(postgres_fdw_options);

 for (opt = postgres_fdw_options; opt->keyword; opt++)
 {
  if (opt->is_libpq_opt && strcmp(opt->keyword, keyword) == 0)
   return 1;
 }

 return 0;
}
