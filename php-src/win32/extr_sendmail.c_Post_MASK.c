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
typedef  char* LPCSTR ;

/* Variables and functions */
 int FAILED_TO_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  mail_socket ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(LPCSTR msg)
{
	int len = (int)FUNC3(msg);
	int slen;
	int index = 0;

#if SENDMAIL_DEBUG
	if (msg)
		printf("POST: '%s'\n", msg);
	return (SUCCESS);
#endif

	while (len > 0) {
		if ((slen = FUNC2(FUNC0(mail_socket), msg + index, len, 0)) < 1)
			return (FAILED_TO_SEND);
		len -= slen;
		index += slen;
	}
	return (SUCCESS);
}