
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; TYPE_1__* obj; } ;
struct TYPE_4__ {long length; unsigned long nid; int ln; int sn; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;






 unsigned long OPENSSL_LH_strhash (int ) ;

__attribute__((used)) static unsigned long added_obj_hash(const ADDED_OBJ *ca)
{
    const ASN1_OBJECT *a;
    int i;
    unsigned long ret = 0;
    unsigned char *p;

    a = ca->obj;
    switch (ca->type) {
    case 131:
        ret = a->length << 20L;
        p = (unsigned char *)a->data;
        for (i = 0; i < a->length; i++)
            ret ^= p[i] << ((i * 3) % 24);
        break;
    case 128:
        ret = OPENSSL_LH_strhash(a->sn);
        break;
    case 130:
        ret = OPENSSL_LH_strhash(a->ln);
        break;
    case 129:
        ret = a->nid;
        break;
    default:

        return 0;
    }
    ret &= 0x3fffffffL;
    ret |= ((unsigned long)ca->type) << 30L;
    return ret;
}
