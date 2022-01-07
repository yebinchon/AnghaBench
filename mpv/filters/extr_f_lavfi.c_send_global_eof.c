
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavfi_pad {int buffer_is_eof; int buffer; } ;
struct lavfi {int num_in_pads; struct lavfi_pad** in_pads; } ;


 int MP_FATAL (struct lavfi*,char*) ;
 scalar_t__ av_buffersrc_add_frame (int ,int *) ;

__attribute__((used)) static void send_global_eof(struct lavfi *c)
{
    for (int n = 0; n < c->num_in_pads; n++) {
        struct lavfi_pad *pad = c->in_pads[n];
        if (!pad->buffer || pad->buffer_is_eof)
            continue;

        if (av_buffersrc_add_frame(pad->buffer, ((void*)0)) < 0)
            MP_FATAL(c, "could not send EOF to filter\n");

        pad->buffer_is_eof = 1;
    }
}
