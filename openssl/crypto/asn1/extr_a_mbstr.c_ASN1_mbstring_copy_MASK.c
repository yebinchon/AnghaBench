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
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,unsigned char const*,int,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(ASN1_STRING **out, const unsigned char *in, int len,
                       int inform, unsigned long mask)
{
    return FUNC0(out, in, len, inform, mask, 0, 0);
}