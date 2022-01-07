
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FileFdwOption {scalar_t__ optcontext; scalar_t__ optname; } ;
typedef scalar_t__ Oid ;


 scalar_t__ strcmp (scalar_t__,char const*) ;
 struct FileFdwOption* valid_options ;

__attribute__((used)) static bool
is_valid_option(const char *option, Oid context)
{
 const struct FileFdwOption *opt;

 for (opt = valid_options; opt->optname; opt++)
 {
  if (context == opt->optcontext && strcmp(opt->optname, option) == 0)
   return 1;
 }
 return 0;
}
