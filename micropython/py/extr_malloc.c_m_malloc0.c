
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* m_malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *m_malloc0(size_t num_bytes) {
    void *ptr = m_malloc(num_bytes);


    memset(ptr, 0, num_bytes);

    return ptr;
}
