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
typedef  int uint32_t ;
struct nn_hash_item {int dummy; } ;
struct nn_hash {int dummy; } ;

/* Variables and functions */
 struct nn_hash_item* FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_hash_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_hash*,struct nn_hash_item*) ; 
 struct nn_hash_item* FUNC4 (struct nn_hash*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_hash*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_hash*,int,struct nn_hash_item*) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_hash_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct nn_hash*) ; 

int FUNC9 ()
{
    struct nn_hash hash;
    uint32_t k;
    struct nn_hash_item *item;
    struct nn_hash_item *item5000 = NULL;

    FUNC5 (&hash);

    /*  Insert 10000 elements into the hash table. */
    for (k = 0; k != 10000; ++k) {
        item = FUNC0 (sizeof (struct nn_hash_item), "item");
        FUNC1 (item);
        if (k == 5000)
            item5000 = item;
        FUNC7 (item);
        FUNC6 (&hash, k, item);
    }

    /*  Find one element and check whether it is the correct one. */
    FUNC1 (FUNC4 (&hash, 5000) == item5000);

    /*  Remove all the elements from the hash table and terminate it. */
    for (k = 0; k != 10000; ++k) {
        item = FUNC4 (&hash, k);
        FUNC3 (&hash, item);
        FUNC2 (item);
    }
    FUNC8 (&hash);

    return 0;
}