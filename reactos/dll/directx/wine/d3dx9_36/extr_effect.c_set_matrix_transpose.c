
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct d3dx_parameter {int rows; int columns; int type; scalar_t__ data; } ;
typedef int UINT ;
struct TYPE_4__ {int ** m; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef int FLOAT ;
typedef TYPE_2__ D3DXMATRIX ;


 int D3DXPT_FLOAT ;
 int set_number (int *,int ,int *,int ) ;

__attribute__((used)) static void set_matrix_transpose(struct d3dx_parameter *param, const D3DXMATRIX *matrix)
{
    UINT i, k;

    for (i = 0; i < param->rows; ++i)
    {
        for (k = 0; k < param->columns; ++k)
        {
            set_number((FLOAT *)param->data + i * param->columns + k, param->type,
                    &matrix->u.m[k][i], D3DXPT_FLOAT);
        }
    }
}
