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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/  const*,unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

void FUNC3(BIO *out, const BIGNUM *in, const char *var,
                      int len, unsigned char *buffer)
{
    FUNC0(out, "    static unsigned char %s_%d[] = {", var, len);
    if (FUNC2(in)) {
        FUNC0(out, "\n        0x00");
    } else {
        int i, l;

        l = FUNC1(in, buffer);
        for (i = 0; i < l; i++) {
            FUNC0(out, (i % 10) == 0 ? "\n        " : " ");
            if (i < l - 1)
                FUNC0(out, "0x%02X,", buffer[i]);
            else
                FUNC0(out, "0x%02X", buffer[i]);
        }
    }
    FUNC0(out, "\n    };\n");
}