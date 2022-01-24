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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 size_t ASN1_BUF_PRINT_WIDTH ; 
 int /*<<< orphan*/  ASN1_PRINT_MAX_INDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,unsigned char const,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4(BIO *bp, const unsigned char *buf, size_t buflen, int indent)
{
    size_t i;

    for (i = 0; i < buflen; i++) {
        if ((i % ASN1_BUF_PRINT_WIDTH) == 0) {
            if (i > 0 && FUNC2(bp, "\n") <= 0)
                return 0;
            if (!FUNC0(bp, indent, ASN1_PRINT_MAX_INDENT))
                return 0;
        }
        /*
         * Use colon separators for each octet for compatibility as
         * this function is used to print out key components.
         */
        if (FUNC1(bp, "%02x%s", buf[i],
                       (i == buflen - 1) ? "" : ":") <= 0)
                return 0;
    }
    if (FUNC3(bp, "\n", 1) <= 0)
        return 0;
    return 1;
}