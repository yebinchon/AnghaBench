
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXVECTOR2 ;


 int * D3DXVec2Normalize (int ,int *) ;
 int D3DXVec2Subtract (int *,int const*,int const*) ;

__attribute__((used)) static inline D3DXVECTOR2 *unit_vec2(D3DXVECTOR2 *dir, const D3DXVECTOR2 *pt1, const D3DXVECTOR2 *pt2)
{
    return D3DXVec2Normalize(D3DXVec2Subtract(dir, pt2, pt1), dir);
}
