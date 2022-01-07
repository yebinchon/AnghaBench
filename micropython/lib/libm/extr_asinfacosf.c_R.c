
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float float_t ;


 float pS0 ;
 float pS1 ;
 float pS2 ;
 float qS1 ;

__attribute__((used)) static float R(float z)
{
 float_t p, q;
 p = z*(pS0+z*(pS1+z*pS2));
 q = 1.0f+z*qS1;
 return p/q;
}
