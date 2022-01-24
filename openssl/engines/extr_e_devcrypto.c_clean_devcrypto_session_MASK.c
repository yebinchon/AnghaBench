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
struct session_op {int /*<<< orphan*/  ses; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIOCFSESSION ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cfd ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct session_op*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct session_op *sess) {
    if (FUNC1(cfd, CIOCFSESSION, &sess->ses) < 0) {
        FUNC0(ERR_LIB_SYS, errno, "calling ioctl()");
        return 0;
    }
    FUNC2(sess, 0, sizeof(struct session_op));
    return 1;
}