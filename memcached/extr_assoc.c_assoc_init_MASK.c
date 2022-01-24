#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hash_power_level; int hash_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int hashpower ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  primary_hashtable ; 
 TYPE_1__ stats_state ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(const int hashtable_init) {
    if (hashtable_init) {
        hashpower = hashtable_init;
    }
    primary_hashtable = FUNC2(FUNC5(hashpower), sizeof(void *));
    if (! primary_hashtable) {
        FUNC4(stderr, "Failed to init hashtable.\n");
        FUNC3(EXIT_FAILURE);
    }
    FUNC0();
    stats_state.hash_power_level = hashpower;
    stats_state.hash_bytes = FUNC5(hashpower) * sizeof(void *);
    FUNC1();
}