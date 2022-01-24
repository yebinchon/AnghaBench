#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct logentry_eviction {long long exptime; scalar_t__ latime; scalar_t__ nkey; int /*<<< orphan*/  key; int /*<<< orphan*/  clsid; int /*<<< orphan*/  it_flags; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ data; } ;
typedef  TYPE_1__ logentry ;
struct TYPE_8__ {scalar_t__ exptime; scalar_t__ time; scalar_t__ nkey; int /*<<< orphan*/  it_flags; } ;
typedef  TYPE_2__ item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(logentry *e, item *it) {
    struct logentry_eviction *le = (struct logentry_eviction *) e->data;
    le->exptime = (it->exptime > 0) ? (long long int)(it->exptime - current_time) : (long long int) -1;
    le->latime = current_time - it->time;
    le->it_flags = it->it_flags;
    le->nkey = it->nkey;
    le->clsid = FUNC0(it);
    FUNC2(le->key, FUNC1(it), it->nkey);
    e->size = sizeof(struct logentry_eviction) + le->nkey;
}