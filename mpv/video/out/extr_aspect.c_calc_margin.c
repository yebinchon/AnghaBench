
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPCLAMP (int,int ,int) ;
 int MPMAX (int ,int) ;

__attribute__((used)) static void calc_margin(float opts[2], int out[2], int size)
{
    out[0] = MPCLAMP((int)(opts[0] * size), 0, size);
    out[1] = MPCLAMP((int)(opts[1] * size), 0, size);

    if (out[0] + out[1] >= size) {

        out[0] = 0;
        out[1] = MPMAX(0, size - 1);
    }
}
