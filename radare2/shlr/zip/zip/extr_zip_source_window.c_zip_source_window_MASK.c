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
typedef  void* zip_uint64_t ;
struct zip_source {int dummy; } ;
struct zip {int /*<<< orphan*/  error; } ;
struct window {void* left; void* len; void* skip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  window_read ; 
 struct zip_source* FUNC2 (struct zip*,struct zip_source*,int /*<<< orphan*/ ,struct window*) ; 

struct zip_source *
FUNC3(struct zip *za, struct zip_source *src, zip_uint64_t start, zip_uint64_t len)
{
    struct window *ctx;

    if (src == NULL) {
	FUNC0(&za->error, ZIP_ER_INVAL, 0);
	return NULL;
    }

    if ((ctx=(struct window *)FUNC1(sizeof(*ctx))) == NULL) {
	FUNC0(&za->error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    ctx->skip = start;
    ctx->len = len;
    ctx->left = len;

    return FUNC2(za, src, window_read, ctx);
}