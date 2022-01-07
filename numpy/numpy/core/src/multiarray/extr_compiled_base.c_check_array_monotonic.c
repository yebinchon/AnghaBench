
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t npy_intp ;



__attribute__((used)) static int
check_array_monotonic(const double *a, npy_intp lena)
{
    npy_intp i;
    double next;
    double last;

    if (lena == 0) {

        return 1;
    }
    last = a[0];


    for (i = 1; (i < lena) && (a[i] == last); i++);

    if (i == lena) {

        return 1;
    }

    next = a[i];
    if (last < next) {

        for (i += 1; i < lena; i++) {
            last = next;
            next = a[i];
            if (last > next) {
                return 0;
            }
        }
        return 1;
    }
    else {

        for (i += 1; i < lena; i++) {
            last = next;
            next = a[i];
            if (last < next) {
                return 0;
            }
        }
        return -1;
    }
}
