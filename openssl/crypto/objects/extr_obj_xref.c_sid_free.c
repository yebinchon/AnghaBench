
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nid_triple ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void sid_free(nid_triple *tt)
{
    OPENSSL_free(tt);
}
