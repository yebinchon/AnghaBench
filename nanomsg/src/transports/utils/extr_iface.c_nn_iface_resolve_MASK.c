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
struct sockaddr_storage {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sockaddr_storage*,size_t*) ; 
 int FUNC2 (char const*,size_t,int,struct sockaddr_storage*,size_t*) ; 

int FUNC3 (const char *addr, size_t addrlen, int ipv4only,
    struct sockaddr_storage *result, size_t *resultlen)
{
    int rc;

    /*  Asterisk is a special name meaning "all interfaces". */
    if (addrlen == 1 && addr [0] == '*') {
        FUNC1 (ipv4only, result, resultlen);
        return 0;
    }

    rc = FUNC2 (addr, addrlen, ipv4only, result, resultlen);
    if (rc == -EINVAL)
        return -ENODEV;
    FUNC0 (rc == 0, -rc);
    return 0;
}