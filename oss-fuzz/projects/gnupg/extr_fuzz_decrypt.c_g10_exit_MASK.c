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
 int /*<<< orphan*/  GCRYCTL_TERM_SECMEM ; 
 int /*<<< orphan*/  GCRYCTL_UPDATE_RANDOM_SEED_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2( int rc )
{
    FUNC1 (GCRYCTL_UPDATE_RANDOM_SEED_FILE);
    FUNC1 (GCRYCTL_TERM_SECMEM );
    FUNC0 (rc);
}