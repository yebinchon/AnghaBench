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
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  h_buf ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (struct hostent*,char*,int,struct hostent**,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*) ; 

int FUNC4(int argc, char** argv) {
	struct hostent he_buf;
	struct hostent *he_res;
	char h_buf[1024];
	int ch_errno;
	int ret;
	do {
		ret = FUNC0(&he_buf, h_buf, sizeof(h_buf), &he_res, &ch_errno);
		FUNC2("ret: %d, h_errno: %d\n", ret, ch_errno);
		if(ret != 0) {
			errno = ret;
			ret = -1;
		}
		if(ret == -1) {
			FUNC1("gethostent_r");
			break;
		}
		if(he_res) {
			FUNC3(he_res);
		}
	} while (he_res);
	return 0;
}