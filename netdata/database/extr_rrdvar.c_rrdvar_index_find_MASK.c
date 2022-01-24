#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl_tree_lock ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_3__ {char* name; scalar_t__ hash; } ;
typedef  TYPE_1__ RRDVAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static inline RRDVAR *FUNC2(avl_tree_lock *tree, const char *name, uint32_t hash) {
    RRDVAR tmp;
    tmp.name = (char *)name;
    tmp.hash = (hash)?hash:FUNC1(tmp.name);

    return (RRDVAR *)FUNC0(tree, (avl *)&tmp);
}