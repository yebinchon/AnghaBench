
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_imgfmt_desc {int dummy; } ;
struct ra {int log; } ;


 int IMGFMT_END ;
 int IMGFMT_START ;
 int MP_MSG (struct ra*,int,char*,...) ;
 char* mp_imgfmt_to_name (int) ;
 int mp_msg_test (int ,int) ;
 int ra_dump_imgfmt_desc (struct ra*,struct ra_imgfmt_desc*,int) ;
 scalar_t__ ra_get_imgfmt_desc (struct ra*,int,struct ra_imgfmt_desc*) ;
 scalar_t__ strcmp (char const*,char*) ;

void ra_dump_img_formats(struct ra *ra, int msgl)
{
    if (!mp_msg_test(ra->log, msgl))
        return;
    MP_MSG(ra, msgl, "Image formats:\n");
    for (int imgfmt = IMGFMT_START; imgfmt < IMGFMT_END; imgfmt++) {
        const char *name = mp_imgfmt_to_name(imgfmt);
        if (strcmp(name, "unknown") == 0)
            continue;
        MP_MSG(ra, msgl, "  %s", name);
        struct ra_imgfmt_desc desc;
        if (ra_get_imgfmt_desc(ra, imgfmt, &desc)) {
            MP_MSG(ra, msgl, " => ");
            ra_dump_imgfmt_desc(ra, &desc, msgl);
        } else {
            MP_MSG(ra, msgl, "\n");
        }
    }
}
