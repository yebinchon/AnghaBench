
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* MP_STATE_PORT ;


 int m_free (void**) ;

void m_free_bluetooth(void *ptr_in) {
    void **ptr = &((void**)ptr_in)[-2];
    if (ptr[1] != ((void*)0)) {
        ((void**)ptr[1])[0] = ptr[0];
    }
    if (ptr[0] != ((void*)0)) {
        ((void**)ptr[0])[1] = ptr[1];
    } else {
        MP_STATE_PORT(bluetooth_nimble_memory) = ptr[1];
    }
    m_free(ptr);
}
