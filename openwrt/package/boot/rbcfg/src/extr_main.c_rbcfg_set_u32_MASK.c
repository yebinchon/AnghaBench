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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct rbcfg_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rbcfg_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static int
FUNC2(struct rbcfg_ctx *ctx, uint16_t id, uint32_t val)
{
	void *tag_data;
	uint16_t tag_len;
	int err;

	err = FUNC1(ctx, id, &tag_len, &tag_data);
	if (err)
		return err;

	FUNC0(tag_data, val);
	return 0;
}