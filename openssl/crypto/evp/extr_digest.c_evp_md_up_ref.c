
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_MD_up_ref (void*) ;

__attribute__((used)) static int evp_md_up_ref(void *md)
{
    return EVP_MD_up_ref(md);
}
