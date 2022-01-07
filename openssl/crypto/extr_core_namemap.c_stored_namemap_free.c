
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stored; } ;
typedef TYPE_1__ OSSL_NAMEMAP ;


 int ossl_namemap_free (TYPE_1__*) ;

__attribute__((used)) static void stored_namemap_free(void *vnamemap)
{
    OSSL_NAMEMAP *namemap = vnamemap;


    namemap->stored = 0;
    ossl_namemap_free(namemap);
}
