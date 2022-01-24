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
 scalar_t__ ECONNRESET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ EWOULDBLOCK ; 
 int FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4 (int fd)
{
    int rc;
    if (FUNC3 (fd < 0)) {
        return;
    }
    rc = FUNC0 (fd);
    if (FUNC2 (rc == 0))
        return;
    FUNC1 (errno == EINTR || errno == ETIMEDOUT ||
        errno == EWOULDBLOCK || errno == EINPROGRESS || errno == ECONNRESET);
}