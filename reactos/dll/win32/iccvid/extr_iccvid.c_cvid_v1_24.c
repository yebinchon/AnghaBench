
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * r; int * g; int * b; } ;
typedef TYPE_1__ cvid_codebook ;
typedef int BOOL ;



__attribute__((used)) static void cvid_v1_24(unsigned char *vptr, unsigned char *limit, int stride, BOOL inverted,
    cvid_codebook *cb)
{
int row_inc;
int x, y;

    if (!inverted)
        row_inc = -stride;
    else
        row_inc = stride;


    for (y = 0; y < 4; y++)
    {
        if (&vptr[y*row_inc] < limit) return;
        for (x = 0; x < 4; x++)
        {
            vptr[y*row_inc + x*3 + 0] = cb->b[x/2+(y/2)*2];
            vptr[y*row_inc + x*3 + 1] = cb->g[x/2+(y/2)*2];
            vptr[y*row_inc + x*3 + 2] = cb->r[x/2+(y/2)*2];
        }
    }
}
