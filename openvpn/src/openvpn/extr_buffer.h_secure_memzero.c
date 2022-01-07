
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SecureZeroMemory (void*,size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static inline void
secure_memzero(void *data, size_t len)
{



    memset(data, 0, len);
    __asm__ __volatile__ ("" : : "r" (data) : "memory");







}
