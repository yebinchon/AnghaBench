
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* s; int idx; } ;
typedef int PROP_TABLE ;
typedef TYPE_1__ PROPERTY_STRING ;
typedef int OSSL_PROPERTY_IDX ;


 scalar_t__ lh_PROPERTY_STRING_error (int *) ;
 int lh_PROPERTY_STRING_insert (int *,TYPE_1__*) ;
 TYPE_1__* lh_PROPERTY_STRING_retrieve (int *,TYPE_1__*) ;
 TYPE_1__* new_property_string (char const*,int *) ;
 int property_free (TYPE_1__*) ;

__attribute__((used)) static OSSL_PROPERTY_IDX ossl_property_string(PROP_TABLE *t,
                                              OSSL_PROPERTY_IDX *pidx,
                                              const char *s)
{
    PROPERTY_STRING p, *ps, *ps_new;

    p.s = s;
    ps = lh_PROPERTY_STRING_retrieve(t, &p);
    if (ps == ((void*)0) && pidx != ((void*)0))
        if ((ps_new = new_property_string(s, pidx)) != ((void*)0)) {
            lh_PROPERTY_STRING_insert(t, ps_new);
            if (lh_PROPERTY_STRING_error(t)) {
                property_free(ps_new);
                return 0;
            }
            ps = ps_new;
        }
    return ps != ((void*)0) ? ps->idx : 0;
}
