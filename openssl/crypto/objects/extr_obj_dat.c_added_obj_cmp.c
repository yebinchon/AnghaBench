
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; TYPE_1__* obj; } ;
struct TYPE_5__ {int length; int nid; int * ln; int * sn; int data; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;






 int memcmp (int ,int ,size_t) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int added_obj_cmp(const ADDED_OBJ *ca, const ADDED_OBJ *cb)
{
    ASN1_OBJECT *a, *b;
    int i;

    i = ca->type - cb->type;
    if (i)
        return i;
    a = ca->obj;
    b = cb->obj;
    switch (ca->type) {
    case 131:
        i = (a->length - b->length);
        if (i)
            return i;
        return memcmp(a->data, b->data, (size_t)a->length);
    case 128:
        if (a->sn == ((void*)0))
            return -1;
        else if (b->sn == ((void*)0))
            return 1;
        else
            return strcmp(a->sn, b->sn);
    case 130:
        if (a->ln == ((void*)0))
            return -1;
        else if (b->ln == ((void*)0))
            return 1;
        else
            return strcmp(a->ln, b->ln);
    case 129:
        return a->nid - b->nid;
    default:

        return 0;
    }
}
