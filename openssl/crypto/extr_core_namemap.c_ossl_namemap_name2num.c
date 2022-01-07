
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;


 int ossl_namemap_name2num_n (int const*,char const*,int ) ;
 int strlen (char const*) ;

int ossl_namemap_name2num(const OSSL_NAMEMAP *namemap, const char *name)
{
    if (name == ((void*)0))
        return 0;

    return ossl_namemap_name2num_n(namemap, name, strlen(name));
}
