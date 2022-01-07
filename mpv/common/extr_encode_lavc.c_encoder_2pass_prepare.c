
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stream {int dummy; } ;
struct encoder_context {TYPE_2__* encoder; int twopass_bytebuffer; int global; int type; TYPE_1__* options; } ;
struct bstr {scalar_t__ start; } ;
struct TYPE_4__ {int flags; scalar_t__ stats_in; } ;
struct TYPE_3__ {int file; } ;


 int AV_CODEC_FLAG_PASS1 ;
 int AV_CODEC_FLAG_PASS2 ;
 int MP_INFO (struct encoder_context*,char*,char*) ;
 int MP_WARN (struct encoder_context*,char*,char*) ;
 int free_stream (struct stream*) ;
 int open_output_stream (char*,int ) ;
 struct stream* stream_open (char*,int ) ;
 struct bstr stream_read_complete (struct stream*,struct encoder_context*,int) ;
 int stream_type_name (int ) ;
 char* talloc_asprintf (int *,char*,int ,int ) ;
 int talloc_free (char*) ;

__attribute__((used)) static void encoder_2pass_prepare(struct encoder_context *p)
{
    char *filename = talloc_asprintf(((void*)0), "%s-%s-pass1.log",
                                     p->options->file,
                                     stream_type_name(p->type));

    if (p->encoder->flags & AV_CODEC_FLAG_PASS2) {
        MP_INFO(p, "Reading 2-pass log: %s\n", filename);
        struct stream *s = stream_open(filename, p->global);
        if (s) {
            struct bstr content = stream_read_complete(s, p, 1000000000);
            if (content.start) {
                p->encoder->stats_in = content.start;
            } else {
                MP_WARN(p, "could not read '%s', "
                        "disabling 2-pass encoding at pass 1\n", filename);
            }
            free_stream(s);
        } else {
            MP_WARN(p, "could not open '%s', "
                    "disabling 2-pass encoding at pass 2\n", filename);
            p->encoder->flags &= ~(unsigned)AV_CODEC_FLAG_PASS2;
        }
    }

    if (p->encoder->flags & AV_CODEC_FLAG_PASS1) {
        MP_INFO(p, "Writing to 2-pass log: %s\n", filename);
        p->twopass_bytebuffer = open_output_stream(filename, p->global);
        if (!p->twopass_bytebuffer) {
            MP_WARN(p, "could not open '%s', "
                    "disabling 2-pass encoding at pass 1\n", filename);
            p->encoder->flags &= ~(unsigned)AV_CODEC_FLAG_PASS1;
        }
    }

    talloc_free(filename);
}
