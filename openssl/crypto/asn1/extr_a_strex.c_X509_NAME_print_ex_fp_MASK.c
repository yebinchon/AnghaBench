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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 unsigned long XN_FLAG_COMPAT ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,unsigned long) ; 
 int /*<<< orphan*/  send_fp_chars ; 

int FUNC4(FILE *fp, const X509_NAME *nm, int indent,
                          unsigned long flags)
{
    if (flags == XN_FLAG_COMPAT) {
        BIO *btmp;
        int ret;
        btmp = FUNC1(fp, BIO_NOCLOSE);
        if (!btmp)
            return -1;
        ret = FUNC2(btmp, nm, indent);
        FUNC0(btmp);
        return ret;
    }
    return FUNC3(send_fp_chars, fp, nm, indent, flags);
}