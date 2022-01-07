
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct mp_image {int dummy; } ;
struct image_writer_opts {int format; } ;


 int AV_CODEC_ID_PNG ;
 struct image_writer_opts image_writer_opts_defaults ;
 int write_image (struct mp_image*,struct image_writer_opts*,char const*,int *,struct mp_log*) ;

void dump_png(struct mp_image *image, const char *filename, struct mp_log *log)
{
    struct image_writer_opts opts = image_writer_opts_defaults;
    opts.format = AV_CODEC_ID_PNG;
    write_image(image, &opts, filename, ((void*)0), log);
}
