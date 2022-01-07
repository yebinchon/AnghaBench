
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FLOAT ;
typedef int D3DXFLOAT16 ;
typedef int BOOL ;


 int D3DXFloat16To32Array (scalar_t__*,int *,int) ;
 int FALSE ;
 int NUM_ELEM ;
 int TRUE ;
 scalar_t__ fabsf (scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static BOOL weld_float16_2(void *to, void *from, FLOAT epsilon)
{
    D3DXFLOAT16 *v1_float16 = to;
    D3DXFLOAT16 *v2_float16 = from;
    FLOAT diff_x;
    FLOAT diff_y;
    FLOAT max_abs_diff;

    FLOAT v1[2];
    FLOAT v2[2];

    D3DXFloat16To32Array(v1, v1_float16, 2);
    D3DXFloat16To32Array(v2, v2_float16, 2);

    diff_x = fabsf(v1[0] - v2[0]);
    diff_y = fabsf(v1[1] - v2[1]);
    max_abs_diff = max(diff_x, diff_y);

    if (max_abs_diff <= epsilon)
    {
        memcpy(to, from, 2 * sizeof(D3DXFLOAT16));

        return TRUE;
    }

    return FALSE;

}
