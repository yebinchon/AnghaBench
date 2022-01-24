#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int number; void (* fn ) (char const*,void*) ;void* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  namenum; } ;
typedef  TYPE_1__ OSSL_NAMEMAP ;
typedef  TYPE_2__ DOALL_NAMES_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC3(const OSSL_NAMEMAP *namemap, int number,
                              void (*fn)(const char *name, void *data),
                              void *data)
{
    DOALL_NAMES_DATA cbdata;

    cbdata.number = number;
    cbdata.fn = fn;
    cbdata.data = data;
    FUNC0(namemap->lock);
    FUNC2(namemap->namenum, do_name,
                                            &cbdata);
    FUNC1(namemap->lock);
}