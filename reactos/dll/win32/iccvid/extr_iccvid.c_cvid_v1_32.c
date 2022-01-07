
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * b; int * g; int * r; } ;
typedef TYPE_1__ cvid_codebook ;
typedef int BOOL ;


 int MAKECOLOUR32 (int ,int ,int ) ;

__attribute__((used)) static void cvid_v1_32(unsigned char *frm, unsigned char *limit, int stride, BOOL inverted,
    cvid_codebook *cb)
{
unsigned long *vptr = (unsigned long *)frm;
int row_inc;
int x, y;

    if (!inverted)
        row_inc = -stride/4;
    else
        row_inc = stride/4;


    for (y = 0; y < 4; y++)
    {
        if (&vptr[y*row_inc] < (unsigned long *)limit) return;
        for (x = 0; x < 4; x++)
            vptr[y*row_inc + x] = MAKECOLOUR32(cb->r[x/2+(y/2)*2], cb->g[x/2+(y/2)*2], cb->b[x/2+(y/2)*2]);
    }
}
