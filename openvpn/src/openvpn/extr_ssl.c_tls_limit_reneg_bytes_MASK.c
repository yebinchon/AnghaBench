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
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(const cipher_kt_t *cipher, int *reneg_bytes)
{
    if (cipher && FUNC0(cipher))
    {
        if (*reneg_bytes == -1) /* Not user-specified */
        {
            FUNC1(M_WARN, "WARNING: cipher with small block size in use, "
                "reducing reneg-bytes to 64MB to mitigate SWEET32 attacks.");
            *reneg_bytes = 64 * 1024 * 1024;
        }
    }
}