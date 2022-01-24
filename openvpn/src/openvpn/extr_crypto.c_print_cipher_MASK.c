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
typedef  int /*<<< orphan*/  cipher_kt_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(const cipher_kt_t *cipher)
{
    const char *var_key_size = FUNC4(cipher) ?
                               " by default" : "";

    FUNC5("%s  (%d bit key%s, ",
           FUNC6(FUNC3(cipher)),
           FUNC1(cipher) * 8, var_key_size);

    if (FUNC0(cipher) == 1)
    {
        FUNC5("stream cipher");
    }
    else
    {
        FUNC5("%d bit block", FUNC0(cipher) * 8);
    }

    if (!FUNC2(cipher))
    {
        FUNC5(", TLS client/server mode only");
    }

    FUNC5(")\n");
}