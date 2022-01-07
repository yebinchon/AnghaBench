
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_MD_meth_free (int *) ;
 int * sha1_md ;

__attribute__((used)) static void test_sha_md_destroy(void)
{
    EVP_MD_meth_free(sha1_md);
    sha1_md = ((void*)0);
}
