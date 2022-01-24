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
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (char*,char**) ; 

__attribute__((used)) static int FUNC2(char *str, float *out)
{
    char *rest;
    float dec_val;

    dec_val = FUNC1(str, &rest);
    if (!rest || (rest == str) || !FUNC0(dec_val))
        return -1;

    *out = dec_val;
    return 0;
}