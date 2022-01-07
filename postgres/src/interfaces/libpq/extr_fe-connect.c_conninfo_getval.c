
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* val; } ;
typedef TYPE_1__ PQconninfoOption ;


 TYPE_1__* conninfo_find (TYPE_1__*,char const*) ;

__attribute__((used)) static const char *
conninfo_getval(PQconninfoOption *connOptions,
    const char *keyword)
{
 PQconninfoOption *option;

 option = conninfo_find(connOptions, keyword);

 return option ? option->val : ((void*)0);
}
