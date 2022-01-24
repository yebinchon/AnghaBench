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

/* Variables and functions */
 int /*<<< orphan*/  CMDBUFSIZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static char *
FUNC5(void)
{
	int	 len;		/* length of this command */
	char	 lenbuf[7];	/* get the length string here */
	char	*newcb;		/* used to realloc cmdbuf */
	static char	*cmdbuf;/* get the command string here */
	static int	 cbsize;/* size of cmdbuf */

	if ((len = FUNC2(sd, &lenbuf, 6)) == 6) {
		lenbuf[6] = 0; /* Terminate buffer such that atoi() works right */
		len = FUNC1(lenbuf);
		if (cbsize < (len + 1)) {
			newcb = (char *) FUNC3(cmdbuf,
			    FUNC0((len + 256), CMDBUFSIZ));
			if (newcb != NULL) {
				cmdbuf = newcb;
				cbsize = FUNC0((len + 256), CMDBUFSIZ);
			}
		}
		if (cbsize >= len && (len = FUNC2(sd, cmdbuf, len)) > 0) {
			cmdbuf[len] = 0;
			return cmdbuf;
		} else {
			return NULL;
		}
	} else {
		if (len == 0) { /* EOF */
			FUNC4();
		}
		return NULL;
	}

}