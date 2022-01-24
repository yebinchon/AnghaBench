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
typedef  int /*<<< orphan*/  npy_half ;

/* Variables and functions */
 float FUNC0 (float,float,float*) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 

npy_half FUNC3(npy_half h1, npy_half h2, npy_half *modulus)
{
    float fh1 = FUNC2(h1);
    float fh2 = FUNC2(h2);
    float div, mod;

    div = FUNC0(fh1, fh2, &mod);
    *modulus = FUNC1(mod);
    return FUNC1(div);
}