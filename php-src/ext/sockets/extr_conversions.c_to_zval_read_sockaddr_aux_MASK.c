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
typedef  int /*<<< orphan*/  zval ;
struct sockaddr {int sa_family; } ;
typedef  int /*<<< orphan*/  res_context ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const char *sockaddr_c, zval *zv, res_context *ctx)
{
	const struct sockaddr *saddr = (struct sockaddr *)sockaddr_c;

	if (saddr->sa_family == 0) {
		FUNC0(zv);
		return;
	}

	FUNC1(zv);

	switch (saddr->sa_family) {
	case AF_INET:
		FUNC3(sockaddr_c, zv, ctx);
		break;

#if HAVE_IPV6
	case AF_INET6:
		to_zval_read_sockaddr_in6(sockaddr_c, zv, ctx);
		break;
#endif /* HAVE_IPV6 */

	case AF_UNIX:
		FUNC5(sockaddr_c, zv, ctx);
		break;

	default:
		FUNC2(ctx, "cannot read struct sockaddr with family %d; "
				"not supported",
				(int)saddr->sa_family);
		break;
	}
}