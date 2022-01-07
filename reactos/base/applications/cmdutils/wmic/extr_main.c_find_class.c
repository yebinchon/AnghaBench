
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int const* class; int alias; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* alias_map ;
 int strcmpiW (int const*,int ) ;

__attribute__((used)) static const WCHAR *find_class( const WCHAR *alias )
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(alias_map); i++)
    {
        if (!strcmpiW( alias, alias_map[i].alias )) return alias_map[i].class;
    }
    return ((void*)0);
}
