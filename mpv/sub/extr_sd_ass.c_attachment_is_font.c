
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct demux_attachment {char* name; int type; int data_size; int data; } ;


 scalar_t__* font_exts ;
 scalar_t__* font_mimetypes ;
 int mp_warn (struct mp_log*,char*,char*,int ) ;
 scalar_t__ strcasecmp (char*,scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 int strlen (char*) ;

__attribute__((used)) static bool attachment_is_font(struct mp_log *log, struct demux_attachment *f)
{
    if (!f->name || !f->type || !f->data || !f->data_size)
        return 0;
    for (int n = 0; font_mimetypes[n]; n++) {
        if (strcmp(font_mimetypes[n], f->type) == 0)
            return 1;
    }

    char *ext = strlen(f->name) > 4 ? f->name + strlen(f->name) - 4 : "";
    for (int n = 0; font_exts[n]; n++) {
        if (strcasecmp(ext, font_exts[n]) == 0) {
            mp_warn(log, "Loading font attachment '%s' with MIME type %s. "
                    "Assuming this is a broken Matroska file, which was "
                    "muxed without setting a correct font MIME type.\n",
                    f->name, f->type);
            return 1;
        }
    }
    return 0;
}
