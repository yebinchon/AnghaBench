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
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC1 (unsigned char*,char const*) ; 

int FUNC2(X509_VERIFY_PARAM *param, const char *ipasc)
{
    unsigned char ipout[16];
    size_t iplen;

    iplen = (size_t)FUNC1(ipout, ipasc);
    if (iplen == 0)
        return 0;
    return FUNC0(param, ipout, iplen);
}