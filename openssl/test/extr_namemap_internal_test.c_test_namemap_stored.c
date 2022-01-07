
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;


 int * ossl_namemap_stored (int *) ;
 scalar_t__ test_namemap (int *) ;

__attribute__((used)) static int test_namemap_stored(void)
{
    OSSL_NAMEMAP *nm = ossl_namemap_stored(((void*)0));

    return nm != ((void*)0)
        && test_namemap(nm);
}
