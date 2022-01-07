
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QUERY ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void impl_cache_free(QUERY *elem)
{
    OPENSSL_free(elem);
}
