
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ext_flags; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509V3_EXT_DYNAMIC ;

__attribute__((used)) static void ext_list_free(X509V3_EXT_METHOD *ext)
{
    if (ext->ext_flags & X509V3_EXT_DYNAMIC)
        OPENSSL_free(ext);
}
