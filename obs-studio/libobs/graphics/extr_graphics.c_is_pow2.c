
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline bool is_pow2(uint32_t size)
{
 return size >= 2 && (size & (size - 1)) == 0;
}
