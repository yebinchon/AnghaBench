
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * r; int * g; int * b; } ;
typedef TYPE_1__ cvid_codebook ;
typedef int BOOL ;



__attribute__((used)) static void cvid_v4_24(unsigned char *vptr, unsigned char *limit, int stride, BOOL inverted,
    cvid_codebook *cb0, cvid_codebook *cb1, cvid_codebook *cb2, cvid_codebook *cb3)
{
int row_inc;
cvid_codebook * cb[] = {cb0,cb1,cb2,cb3};
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
            vptr[y*row_inc + x*3 + 0] = cb[x/2+(y/2)*2]->b[x%2+(y%2)*2];
            vptr[y*row_inc + x*3 + 1] = cb[x/2+(y/2)*2]->g[x%2+(y%2)*2];
            vptr[y*row_inc + x*3 + 2] = cb[x/2+(y/2)*2]->r[x%2+(y%2)*2];
        }
    }
}
