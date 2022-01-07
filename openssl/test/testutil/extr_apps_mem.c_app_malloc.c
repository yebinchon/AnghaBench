
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* OPENSSL_malloc (int) ;

void* app_malloc(int sz, const char *what)
{
    void *vp = OPENSSL_malloc(sz);

    return vp;
}
