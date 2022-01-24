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
typedef  int /*<<< orphan*/  zip_uint64_t ;
typedef  void* zip_uint32_t ;
typedef  int zip_int64_t ;
typedef  int /*<<< orphan*/  uInt ;
struct zip_stat {int valid; int /*<<< orphan*/  encryption_method; int /*<<< orphan*/  comp_method; int /*<<< orphan*/  comp_size; void* crc; int /*<<< orphan*/  size; } ;
struct zip_source {int dummy; } ;
struct crc_context {int eof; int /*<<< orphan*/ * e; int /*<<< orphan*/  size; void* crc; int /*<<< orphan*/  validate; } ;
typedef  enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_CM_STORE ; 
 int /*<<< orphan*/  ZIP_EM_NONE ; 
 int /*<<< orphan*/  ZIP_ER_CRC ; 
 int /*<<< orphan*/  ZIP_ER_INCONS ; 
#define  ZIP_SOURCE_CLOSE 133 
#define  ZIP_SOURCE_ERROR 132 
 int ZIP_SOURCE_ERR_LOWER ; 
#define  ZIP_SOURCE_FREE 131 
#define  ZIP_SOURCE_OPEN 130 
#define  ZIP_SOURCE_READ 129 
#define  ZIP_SOURCE_STAT 128 
 int ZIP_STAT_COMP_METHOD ; 
 int ZIP_STAT_COMP_SIZE ; 
 int ZIP_STAT_CRC ; 
 int ZIP_STAT_ENCRYPTION_METHOD ; 
 int ZIP_STAT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crc_context*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct zip_source*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zip_source*,struct zip_stat*) ; 

__attribute__((used)) static zip_int64_t
FUNC5(struct zip_source *src, void *_ctx, void *data,
	 zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct crc_context *ctx;
    zip_int64_t n;

    ctx = (struct crc_context *)_ctx;

    switch (cmd) {
    case ZIP_SOURCE_OPEN:
	ctx->eof = 0;
	ctx->crc = (zip_uint32_t)FUNC0(0, NULL, 0);
	ctx->size = 0;

	return 0;

    case ZIP_SOURCE_READ:
	if (ctx->eof || len == 0)
	    return 0;

	if ((n=FUNC3(src, data, len)) < 0)
	    return ZIP_SOURCE_ERR_LOWER;

	if (n == 0) {
	    ctx->eof = 1;
	    if (ctx->validate) {
		struct zip_stat st;

		if (FUNC4(src, &st) < 0)
		    return ZIP_SOURCE_ERR_LOWER;

		if ((st.valid & ZIP_STAT_CRC) && st.crc != ctx->crc) {
		    ctx->e[0] = ZIP_ER_CRC;
		    ctx->e[1] = 0;
		    
		    return -1;
		}
		if ((st.valid & ZIP_STAT_SIZE) && st.size != ctx->size) {
		    ctx->e[0] = ZIP_ER_INCONS;
		    ctx->e[1] = 0;
		    
		    return -1;
		}
	    }
	}
	else {
	    ctx->size += (zip_uint64_t)n;
	    ctx->crc = (zip_uint32_t)FUNC0(ctx->crc, (const Bytef *)data, (uInt)n); /* XXX: check for overflow, use multiple crc calls if needed */
	}
	return n;

    case ZIP_SOURCE_CLOSE:
	return 0;

    case ZIP_SOURCE_STAT:
	{
	    struct zip_stat *st;

	    st = (struct zip_stat *)data;

	    if (ctx->eof) {
		/* XXX: Set comp_size, comp_method, encryption_method?
		        After all, this only works for uncompressed data. */
		st->size = ctx->size;
		st->crc = ctx->crc;
		st->comp_size = ctx->size;
		st->comp_method = ZIP_CM_STORE;
		st->encryption_method = ZIP_EM_NONE;
		st->valid |= ZIP_STAT_SIZE|ZIP_STAT_CRC|ZIP_STAT_COMP_SIZE|ZIP_STAT_COMP_METHOD|ZIP_STAT_ENCRYPTION_METHOD;;
	    }
	}
	return 0;
	
    case ZIP_SOURCE_ERROR:
	FUNC2(data, ctx->e, sizeof(ctx->e));
	return 0;

    case ZIP_SOURCE_FREE:
	FUNC1(ctx);
	return 0;

    default:
	return -1;
    }
    
}