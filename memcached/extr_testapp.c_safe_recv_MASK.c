#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  size_t off_t ;
struct TYPE_3__ {int (* read ) (TYPE_1__*,char*,size_t) ;} ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ allow_closed_read ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* con ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static bool FUNC5(void *buf, size_t len) {
    if (len == 0) {
        return true;
    }
    off_t offset = 0;
    do {
        ssize_t nr = con->read(con, ((char*)buf) + offset, len - offset);
        if (nr == -1) {
            if (errno != EINTR) {
                FUNC2(stderr, "Failed to read: %s\n", FUNC3(errno));
                FUNC0();
            }
        } else {
            if (nr == 0 && allow_closed_read) {
                return false;
            }
            FUNC1(nr != 0);
            offset += nr;
        }
    } while (offset < len);

    return true;
}