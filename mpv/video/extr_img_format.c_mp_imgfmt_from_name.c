
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_imgfmt_entry {int fmt; scalar_t__ name; } ;
typedef int bstr ;


 int av_get_pix_fmt (char*) ;
 scalar_t__ bstr_equals0 (int ,scalar_t__) ;
 char* bstrdup0 (int *,int ) ;
 struct mp_imgfmt_entry* mp_imgfmt_list ;
 int pixfmt2imgfmt (int ) ;
 int talloc_free (char*) ;

int mp_imgfmt_from_name(bstr name)
{
    int img_fmt = 0;
    for (const struct mp_imgfmt_entry *p = mp_imgfmt_list; p->name; ++p) {
        if (bstr_equals0(name, p->name)) {
            img_fmt = p->fmt;
            break;
        }
    }
    if (!img_fmt) {
        char *t = bstrdup0(((void*)0), name);
        img_fmt = pixfmt2imgfmt(av_get_pix_fmt(t));
        talloc_free(t);
    }
    return img_fmt;
}
