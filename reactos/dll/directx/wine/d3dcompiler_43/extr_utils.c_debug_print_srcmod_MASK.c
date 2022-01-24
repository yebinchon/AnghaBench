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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSPSM_ABS ; 
 int /*<<< orphan*/  BWRITERSPSM_ABSNEG ; 
 int /*<<< orphan*/  BWRITERSPSM_BIAS ; 
 int /*<<< orphan*/  BWRITERSPSM_BIASNEG ; 
 int /*<<< orphan*/  BWRITERSPSM_COMP ; 
 int /*<<< orphan*/  BWRITERSPSM_DW ; 
 int /*<<< orphan*/  BWRITERSPSM_DZ ; 
 int /*<<< orphan*/  BWRITERSPSM_NEG ; 
 int /*<<< orphan*/  BWRITERSPSM_NOT ; 
 int /*<<< orphan*/  BWRITERSPSM_SIGN ; 
 int /*<<< orphan*/  BWRITERSPSM_SIGNNEG ; 
 int /*<<< orphan*/  BWRITERSPSM_X2 ; 
 int /*<<< orphan*/  BWRITERSPSM_X2NEG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(DWORD mod)
{
    switch (mod)
    {
        FUNC1(BWRITERSPSM_NEG);
        FUNC1(BWRITERSPSM_BIAS);
        FUNC1(BWRITERSPSM_BIASNEG);
        FUNC1(BWRITERSPSM_SIGN);
        FUNC1(BWRITERSPSM_SIGNNEG);
        FUNC1(BWRITERSPSM_COMP);
        FUNC1(BWRITERSPSM_X2);
        FUNC1(BWRITERSPSM_X2NEG);
        FUNC1(BWRITERSPSM_DZ);
        FUNC1(BWRITERSPSM_DW);
        FUNC1(BWRITERSPSM_ABS);
        FUNC1(BWRITERSPSM_ABSNEG);
        FUNC1(BWRITERSPSM_NOT);
        default:
            FUNC0("Unrecognized source modifier %#x.\n", mod);
            return "unrecognized_src_mod";
    }
}