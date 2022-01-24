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
typedef  scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; scalar_t__ st_gid; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int,scalar_t__,scalar_t__) ; 
 int FUNC3 (int,struct stat*) ; 

__attribute__((used)) static void FUNC4(int fd, uid_t uid, gid_t gid) {
    if(fd == -1) return;

    struct stat buf;

    if(FUNC3(fd, &buf) == -1) {
        FUNC1("Cannot fstat() fd %d", fd);
        return;
    }

    if((buf.st_uid != uid || buf.st_gid != gid) && FUNC0(buf.st_mode)) {
        if(FUNC2(fd, uid, gid) == -1)
            FUNC1("Cannot fchown() fd %d.", fd);
    }
}