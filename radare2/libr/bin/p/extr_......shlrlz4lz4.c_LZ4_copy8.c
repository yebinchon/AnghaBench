
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void LZ4_copy8(void* dst, const void* src) {
 memcpy (dst,src,8);
}
