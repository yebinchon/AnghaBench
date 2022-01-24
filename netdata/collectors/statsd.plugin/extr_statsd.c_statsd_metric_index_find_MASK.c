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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_6__ {int /*<<< orphan*/  index; } ;
struct TYPE_5__ {char const* name; scalar_t__ hash; } ;
typedef  TYPE_1__ STATSD_METRIC ;
typedef  TYPE_2__ STATSD_INDEX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static inline STATSD_METRIC *FUNC2(STATSD_INDEX *index, const char *name, uint32_t hash) {
    STATSD_METRIC tmp;
    tmp.name = name;
    tmp.hash = (hash)?hash:FUNC1(tmp.name);

    return (STATSD_METRIC *)FUNC0(&index->index, (avl *)&tmp);
}