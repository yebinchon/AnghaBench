
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dispchar; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef scalar_t__ Oid ;


 scalar_t__ ForeignServerRelationId ;
 scalar_t__ UserMappingRelationId ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static bool
is_valid_dblink_option(const PQconninfoOption *options, const char *option,
        Oid context)
{
 const PQconninfoOption *opt;


 for (opt = options; opt->keyword; opt++)
 {
  if (strcmp(opt->keyword, option) == 0)
   break;
 }
 if (opt->keyword == ((void*)0))
  return 0;


 if (strchr(opt->dispchar, 'D'))
  return 0;


 if (strcmp(opt->keyword, "client_encoding") == 0)
  return 0;





 if (strcmp(opt->keyword, "user") == 0 || strchr(opt->dispchar, '*'))
 {
  if (context != UserMappingRelationId)
   return 0;
 }
 else
 {
  if (context != ForeignServerRelationId)
   return 0;
 }

 return 1;
}
