
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static inline ut32 be24(ut32 v)
{
 ut32 value = v;

 ut8 * pv = (void *)&v;
 value = (pv[0] << 16) | (pv[1] << 8) | pv[2];

 return value;
}
