
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int conv64le (int ) ;

__attribute__((used)) static inline uint64_t
read64le(const uint8_t *buf)
{
 uint64_t num = *(const uint64_t *)buf;
 return conv64le(num);
}
