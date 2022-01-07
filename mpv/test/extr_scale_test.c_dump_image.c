
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scale_test {TYPE_1__* ctx; } ;
struct mp_image {int dummy; } ;
struct image_writer_opts {int format; } ;
struct TYPE_2__ {int log; int global; int out_path; } ;


 int AV_CODEC_ID_PNG ;
 int MP_FATAL (TYPE_1__*,char*,char*) ;
 int abort () ;
 struct image_writer_opts image_writer_opts_defaults ;
 char* mp_tprintf (int,char*,int ,char const*) ;
 int write_image (struct mp_image*,struct image_writer_opts*,char*,int ,int ) ;

__attribute__((used)) static void dump_image(struct scale_test *stest, const char *name,
                       struct mp_image *img)
{
    char *path = mp_tprintf(4096, "%s/%s.png", stest->ctx->out_path, name);

    struct image_writer_opts opts = image_writer_opts_defaults;
    opts.format = AV_CODEC_ID_PNG;

    if (!write_image(img, &opts, path, stest->ctx->global, stest->ctx->log)) {
        MP_FATAL(stest->ctx, "Failed to write '%s'.\n", path);
        abort();
    }
}
