
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ columns; int type; scalar_t__ data; } ;
typedef scalar_t__ UINT ;
typedef int FLOAT ;
typedef int D3DXVECTOR4 ;


 int D3DXPT_FLOAT ;
 int set_number (int *,int ,int *,int ) ;

__attribute__((used)) static void set_vector(struct d3dx_parameter *param, const D3DXVECTOR4 *vector)
{
    UINT i;

    for (i = 0; i < param->columns; ++i)
    {
        set_number((FLOAT *)param->data + i, param->type, (FLOAT *)vector + i, D3DXPT_FLOAT);
    }
}
