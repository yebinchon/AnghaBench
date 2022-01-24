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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t,unsigned char const*) ; 

uint64_t
FUNC1(const void *in, size_t inlen, const uint64_t key[2])
{
    uint64_t result;

    FUNC0((unsigned char*)&result,
                (const unsigned char *)in,
                inlen,
                (const unsigned char *)&key[0]);

    return result;
}