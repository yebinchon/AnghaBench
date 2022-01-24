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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_criu_image_path ; 
 int /*<<< orphan*/  s_fd_native ; 
 int /*<<< orphan*/  s_native ; 
 int s_restored ; 
 int s_tried_checkpoint ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(int *forked_pid)
{
    int iRet;
    pid_t iPid;
    pid_t iPidDump = FUNC8();

    if (s_tried_checkpoint) {
        FUNC10("LSCRIU (%d): Already tried checkpoint - one time per customer\n",
                   iPidDump);
        return;
    }
    FUNC10("LSCRIU (%d): Trying checkpoint\n", iPidDump);
    s_tried_checkpoint = 1;
    if (!s_native) {
        FUNC1();
        return;
    }

    FUNC10("LSCRIU (%d): fork!\n", iPidDump);
    iPid = FUNC7();
    if (iPid < 0) {
        FUNC11("LSCRIU (%d): Can't checkpoint due to a fork error: %s\n",
                   iPidDump, FUNC13(errno));
        return;
    }
    if (iPid == 0) {
        pid_t   iPidParent = FUNC9();

        FUNC12();
        iRet = FUNC2(iPidDump,
                                  s_criu_image_path,
                                  s_fd_native);
        FUNC6(s_fd_native);

        FUNC5(iPidParent);
        FUNC3(0, "Restored!");
        FUNC0();
        s_restored = 1;
    }
    else {
        if (forked_pid)
            *forked_pid = iPid;
    }
    FUNC4(0);
}