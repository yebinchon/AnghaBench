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
typedef  int /*<<< orphan*/  gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  GD_NOTICE ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 scalar_t__ VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 char* FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned char) ; 

__attribute__((used)) static int
FUNC6(gdIOCtx *fd, unsigned char *buf, int *ZeroDataBlockP)
{
	int rv;
	int i;

	rv = FUNC0(fd,buf, ZeroDataBlockP);
	if (VERBOSE) {
		char *tmp = NULL;
		if (rv > 0) {
			tmp = FUNC4(3 * rv, sizeof(char), 1);
			for (i=0;i<rv;i++) {
				FUNC5(&tmp[3*sizeof(char)*i], " %02x", buf[i]);
			}
		} else {
			tmp = FUNC2("");
		}
		FUNC3(GD_NOTICE, "[GetDataBlock returning %d: %s]", rv, tmp);
		FUNC1(tmp);
	}
	return(rv);
}