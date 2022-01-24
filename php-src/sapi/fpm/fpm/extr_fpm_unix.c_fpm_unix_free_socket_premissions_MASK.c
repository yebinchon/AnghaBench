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
struct fpm_worker_pool_s {scalar_t__ socket_acl; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

int FUNC1(struct fpm_worker_pool_s *wp) /* {{{ */
{
#ifdef HAVE_FPM_ACL
	if (wp->socket_acl) {
		return acl_free(wp->socket_acl);
	}
#endif
	return 0;
}