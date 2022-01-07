
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXVECTOR2 ;
typedef int BOOL ;


 float D3DXVec2Dot (int *,int *) ;

__attribute__((used)) static inline BOOL is_direction_similar(D3DXVECTOR2 *dir1, D3DXVECTOR2 *dir2, float cos_theta)
{

    return D3DXVec2Dot(dir1, dir2) > cos_theta;
}
