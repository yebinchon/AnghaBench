
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_csp_col_xy {float x; float y; } ;



__attribute__((used)) static inline float mp_xy_X(struct mp_csp_col_xy xy) {
    return xy.x / xy.y;
}
