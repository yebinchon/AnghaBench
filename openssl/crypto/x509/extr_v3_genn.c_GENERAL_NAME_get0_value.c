
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* other; void* otherName; void* ia5; void* dirn; void* ip; void* rid; } ;
struct TYPE_5__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;
void *GENERAL_NAME_get0_value(const GENERAL_NAME *a, int *ptype)
{
    if (ptype)
        *ptype = a->type;
    switch (a->type) {
    case 128:
    case 134:
        return a->d.other;

    case 131:
        return a->d.otherName;

    case 133:
    case 135:
    case 129:
        return a->d.ia5;

    case 136:
        return a->d.dirn;

    case 132:
        return a->d.ip;

    case 130:
        return a->d.rid;

    default:
        return ((void*)0);
    }
}
