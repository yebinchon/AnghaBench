
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;



__attribute__((used)) static int
count_negative_dimensions(const int rank,
                          const npy_intp *dims) {
    int i=0,r=0;
    while (i<rank) {
        if (dims[i] < 0) ++r;
        ++i;
    }
    return r;
}
