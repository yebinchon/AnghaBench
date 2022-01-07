
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_geometry {int wh_valid; } ;


 int m_geometry_apply (int*,int*,int*,int*,int,int,struct m_geometry*) ;

__attribute__((used)) static void apply_autofit(int *w, int *h, int scr_w, int scr_h,
                          struct m_geometry *geo, bool allow_up, bool allow_down)
{
    if (!geo->wh_valid)
        return;

    int dummy = 0;
    int n_w = *w, n_h = *h;
    m_geometry_apply(&dummy, &dummy, &n_w, &n_h, scr_w, scr_h, geo);

    if (!allow_up && *w <= n_w && *h <= n_h)
        return;
    if (!allow_down && *w >= n_w && *h >= n_h)
        return;



    double asp = (double)*w / *h;
    double n_asp = (double)n_w / n_h;
    if ((n_asp <= asp) == allow_down) {
        *w = n_w;
        *h = n_w / asp;
    } else {
        *w = n_h * asp;
        *h = n_h;
    }
}
