
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DVECTOR ;
typedef int D3DVALUE ;


 int AngleBetweenVectorsRad (int const*,int const*) ;
 int RadToDeg (int ) ;

__attribute__((used)) static inline D3DVALUE AngleBetweenVectorsDeg (const D3DVECTOR *a, const D3DVECTOR *b)
{
 return RadToDeg(AngleBetweenVectorsRad(a, b));
}
