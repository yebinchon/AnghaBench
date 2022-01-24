#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  tcp; } ;
typedef  TYPE_1__ fcgi_request ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 size_t INT_MAX ; 
 size_t UINT_MAX ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ssize_t FUNC3(fcgi_request *req, const void *buf, size_t count)
{
	int    ret;
	size_t n = 0;

	do {
#ifdef _WIN32
		size_t tmp;
#endif
		errno = 0;
#ifdef _WIN32
		tmp = count - n;

		if (!req->tcp) {
			unsigned int in_len = tmp > UINT_MAX ? UINT_MAX : (unsigned int)tmp;

			ret = read(req->fd, ((char*)buf)+n, in_len);
		} else {
			int in_len = tmp > INT_MAX ? INT_MAX : (int)tmp;

			ret = recv(req->fd, ((char*)buf)+n, in_len, 0);
			if (ret <= 0) {
				errno = WSAGetLastError();
			}
		}
#else
		ret = FUNC1(req->fd, ((char*)buf)+n, count-n);
#endif
		if (ret > 0) {
			n += ret;
		} else if (ret == 0 && errno == 0) {
			return n;
		} else if (ret <= 0 && errno != 0 && errno != EINTR) {
			return ret;
		}
	} while (n != count);
	return n;
}