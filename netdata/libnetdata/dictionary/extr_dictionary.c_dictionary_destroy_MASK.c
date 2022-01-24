#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ root; } ;
struct TYPE_10__ {struct TYPE_10__* rwlock; struct TYPE_10__* stats; TYPE_1__ values_index; } ;
typedef  int /*<<< orphan*/  NAME_VALUE ;
typedef  TYPE_2__ DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  D_DICTIONARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(DICTIONARY *dict) {
    FUNC0(D_DICTIONARY, "Destroying dictionary.");

    FUNC3(dict);

    while(dict->values_index.root)
        FUNC1(dict, (NAME_VALUE *)dict->values_index.root);

    FUNC2(dict);

    if(dict->stats)
        FUNC4(dict->stats);

    if(dict->rwlock) {
        FUNC5(dict->rwlock);
        FUNC4(dict->rwlock);
    }

    FUNC4(dict);
}