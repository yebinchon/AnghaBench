
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stream {scalar_t__ eof; } ;
struct ebml_parse_ctx {int has_errors; int talloc_ctx; scalar_t__ no_error_messages; } ;
struct ebml_elem_desc {int name; } ;


 int EBML_UINT_INVALID ;
 int MP_MSG (struct ebml_parse_ctx*,int,char*,...) ;
 int MSGL_DEBUG ;
 int MSGL_WARN ;
 int ebml_parse_element (struct ebml_parse_ctx*,void*,int ,int,struct ebml_elem_desc const*,int ) ;
 int ebml_read_length (struct stream*) ;
 int stream_read (struct stream*,int ,int) ;
 int talloc_size (int *,int) ;

int ebml_read_element(struct stream *s, struct ebml_parse_ctx *ctx,
                      void *target, const struct ebml_elem_desc *desc)
{
    ctx->has_errors = 0;
    int msglevel = ctx->no_error_messages ? MSGL_DEBUG : MSGL_WARN;
    uint64_t length = ebml_read_length(s);
    if (s->eof) {
        MP_MSG(ctx, msglevel, "Unexpected end of file "
                   "- partial or corrupt file?\n");
        return -1;
    }
    if (length == EBML_UINT_INVALID) {
        MP_MSG(ctx, msglevel, "EBML element with unknown length - unsupported\n");
        return -1;
    }
    if (length > 1000000000) {
        MP_MSG(ctx, msglevel, "Refusing to read element over 100 MB in size\n");
        return -1;
    }
    ctx->talloc_ctx = talloc_size(((void*)0), length);
    int read_len = stream_read(s, ctx->talloc_ctx, length);
    if (read_len < length)
        MP_MSG(ctx, msglevel, "Unexpected end of file - partial or corrupt file?\n");
    ebml_parse_element(ctx, target, ctx->talloc_ctx, read_len, desc, 0);
    if (ctx->has_errors)
        MP_MSG(ctx, msglevel, "Error parsing element %s\n", desc->name);
    return 0;
}
