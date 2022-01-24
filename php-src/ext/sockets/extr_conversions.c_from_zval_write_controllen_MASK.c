#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ uint32_t ;
struct msghdr {scalar_t__ msg_controllen; int /*<<< orphan*/  msg_control; } ;
struct TYPE_7__ {int /*<<< orphan*/  has_error; } ;
struct TYPE_8__ {TYPE_1__ err; } ;
typedef  TYPE_2__ ser_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(const zval *elem, char *msghdr_c, ser_context *ctx)
{
	struct msghdr *msghdr = (struct msghdr *)msghdr_c;
	uint32_t len;

	/* controllen should be an unsigned with at least 32-bit. Let's assume
	 * this least common denominator
	 */
	FUNC2(elem, (char*)&len, ctx);
	if (!ctx->err.has_error && len == 0) {
		FUNC1(ctx, "controllen cannot be 0");
		return;
	}
	msghdr->msg_control = FUNC0(len, ctx);
	msghdr->msg_controllen = len;
}