
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DVALUE ;


 int M_PI ;
 int TRACE (char*,int,int) ;

__attribute__((used)) static inline D3DVALUE RadToDeg (D3DVALUE angle)
{
 D3DVALUE newangle;
 newangle = angle * (360/(2*M_PI));
 TRACE("%f rad = %f deg\n", angle, newangle);
 return newangle;
}
