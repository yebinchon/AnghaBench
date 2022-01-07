
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int conv16le (int ) ;

__attribute__((used)) static inline uint16_t
read16le(const uint8_t *buf)
{
 uint16_t num = *(const uint16_t *)buf;
 return conv16le(num);
}
