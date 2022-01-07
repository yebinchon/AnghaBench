
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_writer_opts {int format; } ;


 struct image_writer_opts image_writer_opts_defaults ;
 char const* m_opt_choice_str (int ,int ) ;
 int mp_image_writer_formats ;

const char *image_writer_file_ext(const struct image_writer_opts *opts)
{
    struct image_writer_opts defs = image_writer_opts_defaults;

    if (!opts)
        opts = &defs;

    return m_opt_choice_str(mp_image_writer_formats, opts->format);
}
