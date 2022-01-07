
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fabsf (float) ;

__attribute__((used)) static inline bool close_float(float f1, float f2, float precision)
{
 return fabsf(f1 - f2) <= precision;
}
