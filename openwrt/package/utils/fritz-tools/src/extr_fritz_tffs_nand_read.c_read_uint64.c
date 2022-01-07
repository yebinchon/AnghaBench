
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ptrdiff_t ;


 int be64toh (int ) ;
 scalar_t__ swap_bytes ;

__attribute__((used)) static inline uint64_t read_uint64(void *buf, ptrdiff_t off)
{
 uint64_t tmp = *(uint64_t *)(buf + off);
 if (swap_bytes) {
  tmp = be64toh(tmp);
 }
 return tmp;
}
