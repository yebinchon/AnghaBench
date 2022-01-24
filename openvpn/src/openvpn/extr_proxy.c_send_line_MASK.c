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
typedef  scalar_t__ const ssize_t ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int D_LINK_ERRORS ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int M_ERRNO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static bool
FUNC3(socket_descriptor_t sd,
          const char *buf)
{
    const ssize_t size = FUNC1(sd, buf, FUNC2(buf), MSG_NOSIGNAL);
    if (size != (ssize_t) FUNC2(buf))
    {
        FUNC0(D_LINK_ERRORS | M_ERRNO, "send_line: TCP port write failed on send()");
        return false;
    }
    return true;
}