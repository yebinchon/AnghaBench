
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int data_type; size_t data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 char* OPENSSL_malloc (size_t) ;
 int memcpy (void*,int ,size_t) ;

__attribute__((used)) static int get_string_internal(const OSSL_PARAM *p, void **val, size_t max_len,
                               size_t *used_len, unsigned int type)
{
    size_t sz;

    if (val == ((void*)0) || p == ((void*)0) || p->data_type != type)
        return 0;

    sz = p->data_size;

    if (used_len != ((void*)0))
        *used_len = sz;

    if (*val == ((void*)0)) {
        char *const q = OPENSSL_malloc(sz);

        if (q == ((void*)0))
            return 0;
        *val = q;
        memcpy(q, p->data, sz);
        return 1;
    }
    if (max_len < sz)
        return 0;
    memcpy(*val, p->data, sz);
    return 1;
}
