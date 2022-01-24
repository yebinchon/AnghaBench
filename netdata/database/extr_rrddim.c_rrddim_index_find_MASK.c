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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_6__ {char const* id; int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {int /*<<< orphan*/  dimensions_index; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDDIM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static inline RRDDIM *FUNC2(RRDSET *st, const char *id, uint32_t hash) {
    RRDDIM tmp = {
            .id = id,
            .hash = (hash)?hash:FUNC1(id)
    };
    return (RRDDIM *)FUNC0(&(st->dimensions_index), (avl *) &tmp);
}