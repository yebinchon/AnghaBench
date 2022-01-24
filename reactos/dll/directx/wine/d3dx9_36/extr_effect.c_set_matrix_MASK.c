#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d3dx_parameter {int columns; float* data; int rows; int /*<<< orphan*/  type; } ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/ ** m; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  TYPE_2__ D3DXMATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct d3dx_parameter *param, const D3DXMATRIX *matrix)
{
    UINT i, k;

    if (param->type == D3DXPT_FLOAT)
    {
        if (param->columns == 4)
            FUNC0(param->data, matrix->u.m, param->rows * 4 * sizeof(float));
        else
            for (i = 0; i < param->rows; ++i)
                FUNC0((float *)param->data + i * param->columns, matrix->u.m + i, param->columns * sizeof(float));
        return;
    }

    for (i = 0; i < param->rows; ++i)
    {
        for (k = 0; k < param->columns; ++k)
        {
            FUNC1((FLOAT *)param->data + i * param->columns + k, param->type,
                    &matrix->u.m[i][k], D3DXPT_FLOAT);
        }
    }
}