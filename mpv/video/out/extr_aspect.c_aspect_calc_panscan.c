
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vo_opts {int panscan; } ;


 scalar_t__ MPMAX (int,int) ;

__attribute__((used)) static void aspect_calc_panscan(struct mp_vo_opts *opts,
                                int w, int h, int d_w, int d_h, int unscaled,
                                int window_w, int window_h, double monitor_par,
                                int *out_w, int *out_h)
{
    w *= monitor_par;

    int fwidth = window_w;
    int fheight = (float)window_w / d_w * d_h / monitor_par;
    if (fheight > window_h || fheight < h) {
        int tmpw = (float)window_h / d_h * d_w * monitor_par;
        if (tmpw <= window_w) {
            fheight = window_h;
            fwidth = tmpw;
        }
    }

    int vo_panscan_area = window_h - fheight;
    double f_w = fwidth / (double)MPMAX(fheight, 1);
    double f_h = 1;
    if (vo_panscan_area == 0) {
        vo_panscan_area = window_w - fwidth;
        f_w = 1;
        f_h = fheight / (double)MPMAX(fwidth, 1);
    }

    if (unscaled) {
        vo_panscan_area = 0;
        if (unscaled != 2 || (d_w <= window_w && d_h <= window_h)) {
            fwidth = d_w * monitor_par;
            fheight = d_h;
        }
    }

    *out_w = fwidth + vo_panscan_area * opts->panscan * f_w;
    *out_h = fheight + vo_panscan_area * opts->panscan * f_h;
}
