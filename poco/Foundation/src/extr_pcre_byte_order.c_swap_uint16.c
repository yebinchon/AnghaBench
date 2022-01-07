
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_uint16 ;



__attribute__((used)) static pcre_uint16
swap_uint16(pcre_uint16 value)
{
return (value >> 8) | (value << 8);
}
