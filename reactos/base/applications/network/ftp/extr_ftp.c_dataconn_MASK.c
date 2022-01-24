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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  from ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int data ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ passivemode ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC6(const char *mode)
{
	struct sockaddr_in from;
	int s, fromlen = sizeof (from);

	if (passivemode)
		return (data);

	s = FUNC1(data, (struct sockaddr *) &from, &fromlen);
	if (s < 0) {
		FUNC5("ftp: accept");
		(void) FUNC2(data), data = -1;
		return 0;
	}
	if(FUNC2(data)) {
		int iret=FUNC0 ();
		FUNC4(stdout,"Error closing socket(%d)\n",iret);
		(void) FUNC3(stdout);
	}

	data = s;
	return (data);
}