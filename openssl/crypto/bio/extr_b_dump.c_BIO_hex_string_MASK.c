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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

int FUNC1(BIO *out, int indent, int width, const void *data,
                   int datalen)
{
    const unsigned char *d = data;
    int i, j = 0;

    if (datalen < 1)
        return 1;

    for (i = 0; i < datalen - 1; i++) {
        if (i && !j)
            FUNC0(out, "%*s", indent, "");

        FUNC0(out, "%02X:", d[i]);

        j = (j + 1) % width;
        if (!j)
            FUNC0(out, "\n");
    }

    if (i && !j)
        FUNC0(out, "%*s", indent, "");
    FUNC0(out, "%02X", d[datalen - 1]);
    return 1;
}