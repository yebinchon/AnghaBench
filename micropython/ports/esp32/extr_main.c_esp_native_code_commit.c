
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint32_t ;


 int MALLOC_CAP_EXEC ;
 void* heap_caps_malloc (size_t,int ) ;
 int m_malloc_fail (size_t) ;
 int memcpy (void*,void*,size_t) ;

void *esp_native_code_commit(void *buf, size_t len) {
    len = (len + 3) & ~3;
    uint32_t *p = heap_caps_malloc(len, MALLOC_CAP_EXEC);
    if (p == ((void*)0)) {
        m_malloc_fail(len);
    }
    memcpy(p, buf, len);
    return p;
}
