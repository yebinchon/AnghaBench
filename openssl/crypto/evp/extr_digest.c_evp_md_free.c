
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_MD_free (void*) ;

__attribute__((used)) static void evp_md_free(void *md)
{
    EVP_MD_free(md);
}
