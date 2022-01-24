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
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ socklen_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MSG_FASTOPEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr const*,scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,void const*,size_t,int,struct sockaddr const*,scalar_t__) ; 

ssize_t FUNC4(int sockfd, const void *buf, size_t len, int flags,
	       const struct sockaddr *dest_addr, socklen_t addrlen) {
	FUNC0();
	FUNC1();
	if (flags & MSG_FASTOPEN) {
		if (!FUNC2(sockfd, dest_addr, addrlen) && errno != EINPROGRESS) {
			return -1;
		}
		dest_addr = NULL;
		addrlen = 0;
		flags &= ~MSG_FASTOPEN;
	}
	return FUNC3(sockfd, buf, len, flags, dest_addr, addrlen);
}