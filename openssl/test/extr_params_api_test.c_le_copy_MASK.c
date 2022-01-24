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

/* Variables and functions */
 int /*<<< orphan*/  DECLARE_IS_ENDIAN ; 
 scalar_t__ IS_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void const*,size_t) ; 

__attribute__((used)) static void FUNC2(unsigned char *out, const void *in, size_t len)
{
    DECLARE_IS_ENDIAN;

    if (IS_LITTLE_ENDIAN)
        FUNC0(out, in, len);
    else
        FUNC1(out, in, len);
}