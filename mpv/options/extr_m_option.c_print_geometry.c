
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_geometry {scalar_t__ y_sign; scalar_t__ x_sign; scalar_t__ xy_valid; scalar_t__ wh_valid; } ;
typedef int m_option_t ;


 int APPEND_PER (int ,int ) ;
 int h ;
 int h_per ;
 char* talloc_asprintf_append (char*,char*) ;
 char* talloc_strdup (int *,char*) ;
 int w ;
 int w_per ;
 int x ;
 int x_per ;
 int y ;
 int y_per ;

__attribute__((used)) static char *print_geometry(const m_option_t *opt, const void *val)
{
    const struct m_geometry *gm = val;
    char *res = talloc_strdup(((void*)0), "");
    if (gm->wh_valid || gm->xy_valid) {
        if (gm->wh_valid) {
            APPEND_PER(w, w_per);
            res = talloc_asprintf_append(res, "x");
            APPEND_PER(h, h_per);
        }
        if (gm->xy_valid) {
            res = talloc_asprintf_append(res, gm->x_sign ? "-" : "+");
            APPEND_PER(x, x_per);
            res = talloc_asprintf_append(res, gm->y_sign ? "-" : "+");
            APPEND_PER(y, y_per);
        }
    }
    return res;
}
