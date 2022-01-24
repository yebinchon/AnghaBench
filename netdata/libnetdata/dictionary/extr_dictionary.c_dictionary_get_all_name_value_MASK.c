#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  root; } ;
struct TYPE_7__ {TYPE_1__ values_index; } ;
typedef  TYPE_2__ DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int (*) (char*,void*,void*),void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(DICTIONARY *dict, int (*callback)(char *name, void *entry, void *data), void *data) {
    int ret = 0;

    FUNC0(dict);

    if(FUNC3(dict->values_index.root))
        ret = FUNC2(dict->values_index.root, callback, data);

    FUNC1(dict);

    return ret;
}