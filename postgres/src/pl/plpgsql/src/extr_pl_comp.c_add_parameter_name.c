
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_nsitem_type ;


 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int plpgsql_ns_additem (int ,int,char const*) ;
 int * plpgsql_ns_lookup (int ,int,char const*,int *,int *,int *) ;
 int plpgsql_ns_top () ;

__attribute__((used)) static void
add_parameter_name(PLpgSQL_nsitem_type itemtype, int itemno, const char *name)
{







 if (plpgsql_ns_lookup(plpgsql_ns_top(), 1,
        name, ((void*)0), ((void*)0),
        ((void*)0)) != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
     errmsg("parameter name \"%s\" used more than once",
      name)));


 plpgsql_ns_additem(itemtype, itemno, name);
}
