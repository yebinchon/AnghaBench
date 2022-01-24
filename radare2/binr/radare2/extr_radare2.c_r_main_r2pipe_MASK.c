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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(int argc, char **argv) {
        int i, rc = 0;
        char *_in = FUNC4 ("R2PIPE_IN");
        char *_out = FUNC4 ("R2PIPE_OUT");
        if (_in && _out) {
		int in = FUNC0 (_in);
		int out = FUNC0 (_out);
		for (i = 1; i < argc; i++) {
			FUNC3 (in, out, argv[i]);
		}
        } else {
		FUNC1 ("Error: R2PIPE_(IN|OUT) environment not set\n");
		FUNC1 ("Usage: r2 -c '!*r2p x' # run commands via r2pipe\n");
                rc = 1;
	}
	FUNC2 (_in);
	FUNC2 (_out);
        return rc;
}