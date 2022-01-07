
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_imgfmt_entry {int fmt; char* name; } ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 char MP_SELECT_LE_BE (char,char) ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;
 int imgfmt2pixfmt (int) ;
 struct mp_imgfmt_entry* mp_imgfmt_list ;
 int snprintf (char*,size_t,char*,char const*) ;
 int strlen (char*) ;

char *mp_imgfmt_to_name_buf(char *buf, size_t buf_size, int fmt)
{
    const char *name = ((void*)0);
    const struct mp_imgfmt_entry *p = mp_imgfmt_list;
    for (; p->fmt; p++) {
        if (p->name && p->fmt == fmt) {
            name = p->name;
            break;
        }
    }
    if (!name) {
        const AVPixFmtDescriptor *pixdesc = av_pix_fmt_desc_get(imgfmt2pixfmt(fmt));
        if (pixdesc)
            name = pixdesc->name;
    }
    if (!name)
        name = "unknown";
    snprintf(buf, buf_size, "%s", name);
    int len = strlen(buf);
    if (len > 2 && buf[len - 2] == MP_SELECT_LE_BE('l', 'b') && buf[len - 1] == 'e')
        buf[len - 2] = '\0';
    return buf;
}
