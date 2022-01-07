
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int OBJ_NAME_TYPE_MD_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;

__attribute__((used)) static void digest_from_name(const char *name, void *data)
{
    const EVP_MD **md = data;

    if (*md != ((void*)0))
        return;

    *md = (const EVP_MD *)OBJ_NAME_get(name, OBJ_NAME_TYPE_MD_METH);
}
