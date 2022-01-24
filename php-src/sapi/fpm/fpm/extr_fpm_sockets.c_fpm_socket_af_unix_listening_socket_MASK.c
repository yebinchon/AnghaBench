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
struct sockaddr_un {int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;
struct fpm_worker_pool_s {TYPE_1__* config; } ;
typedef  int /*<<< orphan*/  sa_un ;
struct TYPE_2__ {int /*<<< orphan*/  listen_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int FUNC0 (struct fpm_worker_pool_s*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct fpm_worker_pool_s *wp) /* {{{ */
{
	struct sockaddr_un sa_un;

	FUNC1(&sa_un, 0, sizeof(sa_un));
	FUNC2(sa_un.sun_path, wp->config->listen_address, sizeof(sa_un.sun_path));
	sa_un.sun_family = AF_UNIX;
	return FUNC0(wp, (struct sockaddr *) &sa_un, sizeof(struct sockaddr_un));
}