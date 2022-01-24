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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ LONG_MIN ; 

long FUNC1(const ASN1_INTEGER *a)
{
    int i;
    int64_t r;
    if (a == NULL)
        return 0;
    i = FUNC0(&r, a);
    if (i == 0)
        return -1;
    if (r > LONG_MAX || r < LONG_MIN)
        return -1;
    return (long)r;
}