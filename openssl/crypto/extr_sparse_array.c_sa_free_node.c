
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (void**) ;

__attribute__((used)) static void sa_free_node(void **p)
{
    OPENSSL_free(p);
}
