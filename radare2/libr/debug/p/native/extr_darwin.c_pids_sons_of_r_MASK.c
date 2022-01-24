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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int*,char*,char*,int*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 

int FUNC10(int pid, int recursive, int limit) {
        int p, mola, tmp, n = 0;
        FILE *fd;
        char tmp3[8];
        char buf[128];
        char tmp2[1024];
        struct dirent *file;
        DIR *dh;
       
        if (pid < 1)
	       return false;
	dh = FUNC6 ("/proc/");
	if (!dh) {
                return false;
	}

        while ((file = (struct dirent *)FUNC8 (dh))) {
                p = FUNC0 (file->d_name);
                if (p) {
                        FUNC9 (buf,"/proc/%s/stat", file->d_name);
                        fd = FUNC4 (buf, "r");
                        if (fd) {
                                mola = 0;
                                FUNC5 (fd,"%d %s %s %d",
                                        &tmp, tmp2, tmp3, &mola);
                                if (mola == pid) {
                                        FUNC7 (p, tmp2);
                                        //for(i=0; i<recursive*2;i++)
                                        //      printf(" ");
                                        FUNC2 (" `- %d : %s (%s)\n",
						p, tmp2, (tmp3[0]=='S')?
						"sleeping":(tmp3[0]=='T')?
						"stopped":"running");
                                        n++;
                                        if (recursive<limit) {
                                                n += FUNC10 (p, recursive+1, limit);
					}
                                }
                        }
                        FUNC3 (fd);
                }
        }
	FUNC1 (dh);
        return n;
}