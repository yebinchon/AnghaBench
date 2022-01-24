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
typedef  int /*<<< orphan*/  BIO_ADDRINFO ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIO_F_BIO_GET_PORT ; 
 int /*<<< orphan*/  BIO_LOOKUP_CLIENT ; 
 int /*<<< orphan*/  BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET ; 
 int /*<<< orphan*/  BIO_R_NO_PORT_DEFINED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 unsigned short FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(const char *str, unsigned short *port_ptr)
{
    BIO_ADDRINFO *res = NULL;
    int ret = 0;

    if (str == NULL) {
        FUNC6(BIO_F_BIO_GET_PORT, BIO_R_NO_PORT_DEFINED);
        return 0;
    }

    if (FUNC5() != 1)
        return 0;               /* don't generate another error code here */

    if (FUNC4(NULL, str, BIO_LOOKUP_CLIENT, AF_INET, SOCK_STREAM, &res)) {
        if (FUNC1(res) != AF_INET) {
            FUNC6(BIO_F_BIO_GET_PORT,
                   BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET);
        } else {
            *port_ptr = FUNC8(FUNC3(FUNC0(res)));
            ret = 1;
        }
        FUNC2(res);
    } else {
        FUNC7(2, "host=", str);
    }

    return ret;
}