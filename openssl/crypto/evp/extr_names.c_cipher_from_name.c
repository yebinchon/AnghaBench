
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int OBJ_NAME_TYPE_CIPHER_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;

__attribute__((used)) static void cipher_from_name(const char *name, void *data)
{
    const EVP_CIPHER **cipher = data;

    if (*cipher != ((void*)0))
        return;

    *cipher = (const EVP_CIPHER *)OBJ_NAME_get(name, OBJ_NAME_TYPE_CIPHER_METH);
}
