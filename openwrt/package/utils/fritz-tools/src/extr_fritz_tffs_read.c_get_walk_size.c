
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t get_walk_size(uint32_t entry_len)
{
 return (entry_len + 3) & ~0x03;
}
