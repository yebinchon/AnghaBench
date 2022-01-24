#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int uint32_t ;
struct msghdr {int dummy; } ;
struct cmsghdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  has_error; } ;
struct TYPE_6__ {int /*<<< orphan*/  keys; TYPE_1__ err; } ;
typedef  TYPE_2__ res_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(const char *msghdr_c, zval *zv, res_context *ctx)
{
	struct msghdr	*msg = (struct msghdr *)msghdr_c;
	struct cmsghdr	*cmsg;
	char			buf[sizeof("element #4294967295")];
	char			*bufp = buf;
	uint32_t		i = 1;

	FUNC4(zv);

	for (cmsg = FUNC0(msg);
			cmsg != NULL && !ctx->err.has_error;
			cmsg = FUNC1(msg, cmsg)) {
		zval *elem, tmp;

		FUNC2(&tmp);
		elem = FUNC8(FUNC3(zv), &tmp);

		if ((size_t)FUNC6(buf, sizeof(buf), "element #%u", (unsigned)i++) >= sizeof(buf)) {
			FUNC5(buf, "element", sizeof("element"));
		}
		FUNC9(&ctx->keys, &bufp);

		FUNC7((const char *)cmsg, elem, ctx);

		FUNC10(&ctx->keys);
	}
}