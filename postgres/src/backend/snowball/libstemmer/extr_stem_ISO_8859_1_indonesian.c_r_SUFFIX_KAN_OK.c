
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; } ;



__attribute__((used)) static int r_SUFFIX_KAN_OK(struct SN_env * z) {

    if (!(z->I[1] != 3)) return 0;
    if (!(z->I[1] != 2)) return 0;
    return 1;
}
