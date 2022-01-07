
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ idx; int body; int s; } ;
typedef TYPE_1__ PROPERTY_STRING ;
typedef scalar_t__ OSSL_PROPERTY_IDX ;


 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int memcpy (int ,char const*,size_t const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static PROPERTY_STRING *new_property_string(const char *s,
                                            OSSL_PROPERTY_IDX *pidx)
{
    const size_t l = strlen(s);
    PROPERTY_STRING *ps = OPENSSL_malloc(sizeof(*ps) + l);

    if (ps != ((void*)0)) {
        memcpy(ps->body, s, l + 1);
        ps->s = ps->body;
        ps->idx = ++*pidx;
        if (ps->idx == 0) {
            OPENSSL_free(ps);
            return ((void*)0);
        }
    }
    return ps;
}
