
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ptrdiff_t ;


 int be32toh (int ) ;
 scalar_t__ swap_bytes ;

__attribute__((used)) static inline uint32_t read_uint32(void *buf, ptrdiff_t off)
{
 uint32_t tmp = *(uint32_t *)(buf + off);
 if (swap_bytes) {
  tmp = be32toh(tmp);
 }
 return tmp;
}
