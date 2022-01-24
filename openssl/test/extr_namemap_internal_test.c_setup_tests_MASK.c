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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_cipherbyname ; 
 int /*<<< orphan*/  test_digestbyname ; 
 int /*<<< orphan*/  test_namemap_independent ; 
 int /*<<< orphan*/  test_namemap_stored ; 

int FUNC1(void)
{
    FUNC0(test_namemap_independent);
    FUNC0(test_namemap_stored);
    FUNC0(test_digestbyname);
    FUNC0(test_cipherbyname);
    return 1;
}