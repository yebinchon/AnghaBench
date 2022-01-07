
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ name; } ;


 TYPE_1__* mp_image_writer_formats ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

int image_writer_format_from_ext(const char *ext)
{
    for (int n = 0; mp_image_writer_formats[n].name; n++) {
        if (ext && strcmp(mp_image_writer_formats[n].name, ext) == 0)
            return mp_image_writer_formats[n].value;
    }
    return 0;
}
