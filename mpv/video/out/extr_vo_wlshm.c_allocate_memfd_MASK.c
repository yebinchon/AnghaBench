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
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int F_SEAL_SEAL ; 
 int F_SEAL_SHRINK ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(size_t size)
{
    int fd = FUNC2("mpv", MFD_CLOEXEC | MFD_ALLOW_SEALING);
    if (fd < 0)
        return -1;

    FUNC1(fd, F_ADD_SEALS, F_SEAL_SHRINK | F_SEAL_SEAL);

    if (FUNC3(fd, 0, size) == 0)
        return fd;

    FUNC0(fd);
    return -1;
}