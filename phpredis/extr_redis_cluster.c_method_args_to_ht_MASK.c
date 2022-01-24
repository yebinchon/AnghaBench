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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC3(zval *z_args, int argc) {
    HashTable *ht_ret;
    int i;

    /* Allocate our hash table */
    FUNC0(ht_ret);
    FUNC1(ht_ret, argc, NULL, NULL, 0);

    /* Populate our return hash table with our arguments */
    for (i = 0; i < argc; i++) {
        FUNC2(ht_ret, &z_args[i]);
    }

    /* Return our hash table */
    return ht_ret;
}