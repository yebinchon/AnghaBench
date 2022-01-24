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
 int /*<<< orphan*/  test_bio_get_mem ; 
 int /*<<< orphan*/  test_bio_memleak ; 
 int /*<<< orphan*/  test_bio_new_mem_buf ; 
 int /*<<< orphan*/  test_bio_nonclear_rst ; 
 int /*<<< orphan*/  test_bio_rdonly_mem_buf ; 
 int /*<<< orphan*/  test_bio_rdwr_rdonly ; 

int FUNC1(void)
{
    FUNC0(test_bio_memleak);
    FUNC0(test_bio_get_mem);
    FUNC0(test_bio_new_mem_buf);
    FUNC0(test_bio_rdonly_mem_buf);
    FUNC0(test_bio_rdwr_rdonly);
    FUNC0(test_bio_nonclear_rst);
    return 1;
}