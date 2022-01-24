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
typedef  scalar_t__ zip_int32_t ;
struct zip_source {int dummy; } ;
struct zip {int /*<<< orphan*/  error; } ;
struct deflate {int /*<<< orphan*/  mem_level; scalar_t__ eof; scalar_t__* e; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_MEM_LEVEL ; 
 int /*<<< orphan*/  TORRENT_MEM_LEVEL ; 
 int /*<<< orphan*/  ZIP_AFL_TORRENT ; 
 scalar_t__ ZIP_CM_DEFLATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ZIP_CODEC_ENCODE ; 
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deflate_compress ; 
 int /*<<< orphan*/  deflate_decompress ; 
 int /*<<< orphan*/  FUNC2 (struct deflate*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct zip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zip_source* FUNC5 (struct zip*,struct zip_source*,int /*<<< orphan*/ ,struct deflate*) ; 

struct zip_source *
FUNC6(struct zip *za, struct zip_source *src,
		   zip_int32_t cm, int flags)
{
    struct deflate *ctx;
    struct zip_source *s2;

    if (src == NULL || (cm != ZIP_CM_DEFLATE && !FUNC0(cm))) {
	FUNC1(&za->error, ZIP_ER_INVAL, 0);
	return NULL;
    }

    if ((ctx=(struct deflate *)FUNC3(sizeof(*ctx))) == NULL) {
	FUNC1(&za->error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    ctx->e[0] = ctx->e[1] = 0;
    ctx->eof = 0;
    if (flags & ZIP_CODEC_ENCODE) {
	if (FUNC4(za, ZIP_AFL_TORRENT, 0))
	    ctx->mem_level = TORRENT_MEM_LEVEL;
	else
	    ctx->mem_level = MAX_MEM_LEVEL;
    }

    if ((s2=FUNC5(za, src,
			       ((flags & ZIP_CODEC_ENCODE)
				? deflate_compress : deflate_decompress),
			       ctx)) == NULL) {
	FUNC2(ctx);
	return NULL;
    }

    return s2;
}