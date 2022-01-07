
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int columns; int type; scalar_t__ data; } ;
typedef int UINT ;
typedef float FLOAT ;
typedef int DWORD ;
typedef int D3DXVECTOR4 ;


 int D3DXPT_FLOAT ;
 int set_number (float*,int ,int *,int ) ;

__attribute__((used)) static void get_vector(struct d3dx_parameter *param, D3DXVECTOR4 *vector)
{
    UINT i;

    for (i = 0; i < 4; ++i)
    {
        if (i < param->columns)
            set_number((FLOAT *)vector + i, D3DXPT_FLOAT, (DWORD *)param->data + i, param->type);
        else
            ((FLOAT *)vector)[i] = 0.0f;
    }
}
