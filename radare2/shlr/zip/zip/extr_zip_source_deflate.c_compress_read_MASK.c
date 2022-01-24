#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zip_uint64_t ;
typedef  int zip_int64_t ;
typedef  void* uInt ;
struct zip_source {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail_out; void* avail_in; int /*<<< orphan*/ * next_in; int /*<<< orphan*/  total_in; int /*<<< orphan*/ * next_out; } ;
struct deflate {scalar_t__* e; int eof; TYPE_1__ zstr; scalar_t__ buffer; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 scalar_t__ ZIP_ER_ZLIB ; 
#define  Z_BUF_ERROR 134 
#define  Z_DATA_ERROR 133 
 int /*<<< orphan*/  Z_FINISH ; 
#define  Z_MEM_ERROR 132 
#define  Z_NEED_DICT 131 
#define  Z_OK 130 
#define  Z_STREAM_END 129 
#define  Z_STREAM_ERROR 128 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_source*,scalar_t__*,scalar_t__*) ; 
 int FUNC2 (struct zip_source*,scalar_t__,int) ; 

__attribute__((used)) static zip_int64_t
FUNC3(struct zip_source *src, struct deflate *ctx,
	      void *data, zip_uint64_t len)
{
    int end, ret;
    zip_int64_t n;

    if (ctx->e[0] != 0)
	return -1;
    
    if (len == 0)
	return 0;
	
    ctx->zstr.next_out = (Bytef *)data;
    ctx->zstr.avail_out = (uInt)len; /* XXX: check for overflow */

    end = 0;
    while (!end) {
	ret = FUNC0(&ctx->zstr, ctx->eof ? Z_FINISH : 0);

	switch (ret) {
	case Z_OK:
	case Z_STREAM_END:
	    /* all ok */

	    if (ctx->zstr.avail_out == 0
		|| (ctx->eof && ctx->zstr.avail_in == 0))
		end = 1;
	    break;

	case Z_BUF_ERROR:
	    if (ctx->zstr.avail_in == 0) {
		if (ctx->eof) {
		    end = 1;
		    break;
		}

		if ((n=FUNC2(src, ctx->buffer, sizeof(ctx->buffer))) < 0) {
		    FUNC1(src, ctx->e, ctx->e+1);
		    end = 1;
		    break;
		}
		else if (n == 0) {
		    ctx->eof = 1;
		    ctx->size = ctx->zstr.total_in;
		    /* XXX: check against stat of src? */
		}
		else {
		    ctx->zstr.next_in = (Bytef *)ctx->buffer;
		    ctx->zstr.avail_in = (uInt)n;
		}
		continue;
	    }
	    /* fallthrough */
	case Z_NEED_DICT:
	case Z_DATA_ERROR:
	case Z_STREAM_ERROR:
	case Z_MEM_ERROR:
	    ctx->e[0] = ZIP_ER_ZLIB;
	    ctx->e[1] = ret;

	    end = 1;
	    break;
	}
    }

    if (ctx->zstr.avail_out < len)
	return (zip_int64_t)(len - ctx->zstr.avail_out);

    return (ctx->e[0] == 0) ? 0 : -1;
}