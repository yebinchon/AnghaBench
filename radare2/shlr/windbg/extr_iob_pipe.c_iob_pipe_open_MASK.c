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
struct sockaddr_un {scalar_t__* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*,int) ; 

__attribute__((used)) static void *FUNC6(const char *path) {
	int sock;
	struct sockaddr_un sa;

	sock = FUNC4 (AF_UNIX, SOCK_STREAM, 0);
	if (sock == -1) {
		FUNC3 ("socket");
		return 0;
	}

	FUNC2 (&sa, 0, sizeof (struct sockaddr_un));

	sa.sun_family = AF_UNIX;
	FUNC5 (sa.sun_path, path, sizeof(sa.sun_path));
	sa.sun_path[sizeof (sa.sun_path) - 1] = 0;
	if (FUNC1 (sock, (struct sockaddr *) &sa, sizeof(struct sockaddr_un)) == -1) {
		FUNC3 ("connect");
		FUNC0 (sock);
		return 0;
	}
	//struct timeval tv;
	//tv.tv_sec = 5;
	//tv.tv_usec = 0;
	//setsockopt (sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(struct timeval));
	return (void *) (size_t) sock;
}