
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ext_nid; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;


 TYPE_1__** OBJ_bsearch_ext (TYPE_1__ const**,int ,int ) ;
 int STANDARD_EXTENSION_COUNT ;
 int ext_list ;
 int sk_X509V3_EXT_METHOD_find (int ,TYPE_1__*) ;
 TYPE_1__ const* sk_X509V3_EXT_METHOD_value (int ,int) ;
 int standard_exts ;

const X509V3_EXT_METHOD *X509V3_EXT_get_nid(int nid)
{
    X509V3_EXT_METHOD tmp;
    const X509V3_EXT_METHOD *t = &tmp, *const *ret;
    int idx;

    if (nid < 0)
        return ((void*)0);
    tmp.ext_nid = nid;
    ret = OBJ_bsearch_ext(&t, standard_exts, STANDARD_EXTENSION_COUNT);
    if (ret)
        return *ret;
    if (!ext_list)
        return ((void*)0);
    idx = sk_X509V3_EXT_METHOD_find(ext_list, &tmp);
    return sk_X509V3_EXT_METHOD_value(ext_list, idx);
}
