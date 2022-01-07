
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint ;
typedef void* MP_STATE_PORT ;


 size_t count_links (scalar_t__*) ;
 int gc_nbytes (void**) ;
 int m_free (void**) ;
 int printf (char*,void**,void*,void*,int,size_t,int) ;

void m_free_mbedtls(void *ptr_in) {
    void **ptr = &((void**)ptr_in)[-2];





    if (ptr[1] != ((void*)0)) {
        ((void**)ptr[1])[0] = ptr[0];
    }
    if (ptr[0] != ((void*)0)) {
        ((void**)ptr[0])[1] = ptr[1];
    } else {
        MP_STATE_PORT(mbedtls_memory) = ptr[1];
    }
    m_free(ptr);
}
