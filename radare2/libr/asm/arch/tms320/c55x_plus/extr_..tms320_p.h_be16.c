
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;



__attribute__((used)) static inline ut16 be16(ut16 v)
{
 ut16 value = v;

 ut8 * pv = (void *)&v;
 value = (pv[0] << 8) | pv[1];

 return value;
}
