
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwupload {int* upload_fmts; int num_upload_fmts; int num_fmts; int* fmt_upload_index; int* fmt_upload_num; int* fmts; int f; } ;
struct priv {int last_input_fmt; int last_upload_fmt; int last_sw_fmt; struct mp_hwupload public; } ;


 int MP_INFO (int ,char*,int ,int ,int ) ;
 int mp_imgfmt_select_best_list (int*,int,int) ;
 int mp_imgfmt_to_name (int) ;

__attribute__((used)) static bool update_format_decision(struct priv *p, int input_fmt)
{
    struct mp_hwupload *u = &p->public;

    if (!input_fmt)
        return 0;

    if (input_fmt == p->last_input_fmt)
        return 1;

    p->last_input_fmt = 0;

    int res = mp_imgfmt_select_best_list(u->upload_fmts, u->num_upload_fmts,
                                         input_fmt);

    if (!res)
        return 0;





    int index = -1;
    for (int n = 0; n < u->num_upload_fmts; n++) {
        if (u->upload_fmts[n] == res)
            index = n;
    }

    if (index < 0)
        return 0;

    for (int n = 0; n < u->num_fmts; n++) {
        if (index >= u->fmt_upload_index[n] &&
            index < u->fmt_upload_index[n] + u->fmt_upload_num[n])
        {
            p->last_input_fmt = input_fmt;
            p->last_upload_fmt = u->upload_fmts[index];
            p->last_sw_fmt = u->fmts[n];
            MP_INFO(u->f, "upload %s -> %s (%s)\n",
                    mp_imgfmt_to_name(p->last_input_fmt),
                    mp_imgfmt_to_name(p->last_upload_fmt),
                    mp_imgfmt_to_name(p->last_sw_fmt));
            return 1;
        }
    }

    return 0;
}
