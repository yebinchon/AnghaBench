
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int dummy; } ;
struct mp_log {int dummy; } ;


 int MSGL_ERR ;
 scalar_t__ decode_float (char*,float*) ;
 int mp_msg (struct mp_log*,int ,char*) ;
 char* mp_tags_get_str (struct mp_tags*,char const*) ;

__attribute__((used)) static int decode_gain(struct mp_log *log, struct mp_tags *tags,
                       const char *tag, float *out)
{
    char *tag_val = ((void*)0);
    float dec_val;

    tag_val = mp_tags_get_str(tags, tag);
    if (!tag_val)
        return -1;

    if (decode_float(tag_val, &dec_val) < 0) {
        mp_msg(log, MSGL_ERR, "Invalid replaygain value\n");
        return -1;
    }

    *out = dec_val;
    return 0;
}
