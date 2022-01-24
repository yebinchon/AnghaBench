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
struct TYPE_3__ {scalar_t__ sb_socket; int /*<<< orphan*/ * sb_ssl; } ;
typedef  TYPE_1__ RTMPSockBuf ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 

int
FUNC3(RTMPSockBuf *sb)
{
#if defined(CRYPTO) && !defined(NO_SSL)
    if (sb->sb_ssl)
    {
        TLS_shutdown(sb->sb_ssl);
        TLS_close(sb->sb_ssl);
        sb->sb_ssl = NULL;
    }
#endif
    if (sb->sb_socket != INVALID_SOCKET)
        return FUNC2(sb->sb_socket);
    return 0;
}