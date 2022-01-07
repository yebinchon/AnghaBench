
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ConnectionOption {scalar_t__ optcontext; scalar_t__ optname; } ;
typedef scalar_t__ Oid ;


 struct ConnectionOption* libpq_conninfo_options ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool
is_conninfo_option(const char *option, Oid context)
{
 const struct ConnectionOption *opt;

 for (opt = libpq_conninfo_options; opt->optname; opt++)
  if (context == opt->optcontext && strcmp(opt->optname, option) == 0)
   return 1;
 return 0;
}
