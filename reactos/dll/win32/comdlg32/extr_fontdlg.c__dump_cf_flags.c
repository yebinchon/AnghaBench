
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int name; } ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int TRACE (char*,...) ;
 TYPE_1__* cfflags ;

__attribute__((used)) static void _dump_cf_flags(DWORD cflags)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(cfflags); i++)
        if (cfflags[i].mask & cflags)
            TRACE("%s|",cfflags[i].name);
    TRACE("\n");
}
