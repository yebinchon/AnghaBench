
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int meth; int libctx; } ;
typedef TYPE_1__ EC_GROUP ;


 int EC_GROUP_copy (TYPE_1__*,TYPE_1__ const*) ;
 int EC_GROUP_free (TYPE_1__*) ;
 TYPE_1__* EC_GROUP_new_ex (int ,int ) ;

EC_GROUP *EC_GROUP_dup(const EC_GROUP *a)
{
    EC_GROUP *t = ((void*)0);
    int ok = 0;

    if (a == ((void*)0))
        return ((void*)0);

    if ((t = EC_GROUP_new_ex(a->libctx, a->meth)) == ((void*)0))
        return ((void*)0);
    if (!EC_GROUP_copy(t, a))
        goto err;

    ok = 1;

 err:
    if (!ok) {
        EC_GROUP_free(t);
        return ((void*)0);
    }
        return t;
}
