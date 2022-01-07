
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_bool ;



__attribute__((used)) static int
count_axes(int ndim, const npy_bool *axis_flags)
{
    int idim;
    int naxes = 0;

    for (idim = 0; idim < ndim; ++idim) {
        if (axis_flags[idim]) {
            naxes++;
        }
    }
    return naxes;
}
