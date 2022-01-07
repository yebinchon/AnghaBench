
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SRP_gN ;


 size_t KNOWN_GN_NUMBER ;
 TYPE_1__* knowngN ;
 scalar_t__ strcmp (int ,char const*) ;

SRP_gN *SRP_get_default_gN(const char *id)
{
    size_t i;

    if (id == ((void*)0))
        return knowngN;
    for (i = 0; i < KNOWN_GN_NUMBER; i++) {
        if (strcmp(knowngN[i].id, id) == 0)
            return knowngN + i;
    }
    return ((void*)0);
}
