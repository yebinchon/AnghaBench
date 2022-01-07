
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct d3dx_parameter {int columns; float* data; int rows; int type; } ;
typedef int UINT ;
struct TYPE_4__ {int ** m; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef int FLOAT ;
typedef TYPE_2__ D3DXMATRIX ;


 int D3DXPT_FLOAT ;
 int memcpy (float*,int **,int) ;
 int set_number (int *,int ,int *,int ) ;

__attribute__((used)) static void set_matrix(struct d3dx_parameter *param, const D3DXMATRIX *matrix)
{
    UINT i, k;

    if (param->type == D3DXPT_FLOAT)
    {
        if (param->columns == 4)
            memcpy(param->data, matrix->u.m, param->rows * 4 * sizeof(float));
        else
            for (i = 0; i < param->rows; ++i)
                memcpy((float *)param->data + i * param->columns, matrix->u.m + i, param->columns * sizeof(float));
        return;
    }

    for (i = 0; i < param->rows; ++i)
    {
        for (k = 0; k < param->columns; ++k)
        {
            set_number((FLOAT *)param->data + i * param->columns + k, param->type,
                    &matrix->u.m[i][k], D3DXPT_FLOAT);
        }
    }
}
