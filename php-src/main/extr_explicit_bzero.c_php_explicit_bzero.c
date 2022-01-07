
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RtlSecureZeroMemory (void*,size_t) ;
 int explicit_memset (void*,int ,size_t) ;
 int memset (void*,int ,size_t) ;

void php_explicit_bzero(void *dst, size_t siz)
{





 memset(dst, 0, siz);
 asm __volatile__("" :: "r"(dst) : "memory");







}
