#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct stream {scalar_t__ eof; } ;
struct ebml_parse_ctx {int has_errors; int /*<<< orphan*/  talloc_ctx; scalar_t__ no_error_messages; } ;
struct ebml_elem_desc {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBML_UINT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct ebml_parse_ctx*,int,char*,...) ; 
 int MSGL_DEBUG ; 
 int MSGL_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct ebml_parse_ctx*,void*,int /*<<< orphan*/ ,int,struct ebml_elem_desc const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stream*) ; 
 int FUNC3 (struct stream*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(struct stream *s, struct ebml_parse_ctx *ctx,
                      void *target, const struct ebml_elem_desc *desc)
{
    ctx->has_errors = false;
    int msglevel = ctx->no_error_messages ? MSGL_DEBUG : MSGL_WARN;
    uint64_t length = FUNC2(s);
    if (s->eof) {
        FUNC0(ctx, msglevel, "Unexpected end of file "
                   "- partial or corrupt file?\n");
        return -1;
    }
    if (length == EBML_UINT_INVALID) {
        FUNC0(ctx, msglevel, "EBML element with unknown length - unsupported\n");
        return -1;
    }
    if (length > 1000000000) {
        FUNC0(ctx, msglevel, "Refusing to read element over 100 MB in size\n");
        return -1;
    }
    ctx->talloc_ctx = FUNC4(NULL, length);
    int read_len = FUNC3(s, ctx->talloc_ctx, length);
    if (read_len < length)
        FUNC0(ctx, msglevel, "Unexpected end of file - partial or corrupt file?\n");
    FUNC1(ctx, target, ctx->talloc_ctx, read_len, desc, 0);
    if (ctx->has_errors)
        FUNC0(ctx, msglevel, "Error parsing element %s\n", desc->name);
    return 0;
}