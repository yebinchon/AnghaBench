#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hostname; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRD_CALLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

inline RRDSET *FUNC2(RRDHOST *host, const char *name) {
    FUNC0(D_RRD_CALLS, "rrdset_find_byname() for chart '%s' in host '%s'", name, host->hostname);
    RRDSET *st = FUNC1(host, name, 0);
    return(st);
}