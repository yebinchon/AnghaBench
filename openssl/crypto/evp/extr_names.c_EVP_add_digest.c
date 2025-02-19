
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ pkey_type; } ;
typedef TYPE_1__ EVP_MD ;


 int OBJ_NAME_ALIAS ;
 int OBJ_NAME_TYPE_MD_METH ;
 int OBJ_NAME_add (char const*,int,char const*) ;
 char const* OBJ_nid2ln (scalar_t__) ;
 char const* OBJ_nid2sn (scalar_t__) ;

int EVP_add_digest(const EVP_MD *md)
{
    int r;
    const char *name;

    name = OBJ_nid2sn(md->type);
    r = OBJ_NAME_add(name, OBJ_NAME_TYPE_MD_METH, (const char *)md);
    if (r == 0)
        return 0;
    r = OBJ_NAME_add(OBJ_nid2ln(md->type), OBJ_NAME_TYPE_MD_METH,
                     (const char *)md);
    if (r == 0)
        return 0;

    if (md->pkey_type && md->type != md->pkey_type) {
        r = OBJ_NAME_add(OBJ_nid2sn(md->pkey_type),
                         OBJ_NAME_TYPE_MD_METH | OBJ_NAME_ALIAS, name);
        if (r == 0)
            return 0;
        r = OBJ_NAME_add(OBJ_nid2ln(md->pkey_type),
                         OBJ_NAME_TYPE_MD_METH | OBJ_NAME_ALIAS, name);
    }
    return r;
}
