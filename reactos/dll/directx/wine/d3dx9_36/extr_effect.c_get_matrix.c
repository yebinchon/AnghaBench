
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
typedef float FLOAT ;
typedef int DWORD ;
typedef TYPE_2__ D3DXMATRIX ;
typedef scalar_t__ BOOL ;


 int D3DXPT_FLOAT ;
 int set_number (float*,int ,int *,int ) ;

__attribute__((used)) static void get_matrix(struct d3dx_parameter *param, D3DXMATRIX *matrix, BOOL transpose)
{
    UINT i, k;

    for (i = 0; i < 4; ++i)
    {
        for (k = 0; k < 4; ++k)
        {
            FLOAT *tmp = transpose ? (FLOAT *)&matrix->u.m[k][i] : (FLOAT *)&matrix->u.m[i][k];

            if ((i < param->rows) && (k < param->columns))
                set_number(tmp, D3DXPT_FLOAT, (DWORD *)param->data + i * param->columns + k, param->type);
            else
                *tmp = 0.0f;
        }
    }
}
