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
struct lfs2_gstate {int /*<<< orphan*/  pair; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  lfs2_block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(const struct lfs2_gstate *a,
        const lfs2_block_t *pair) {
    return FUNC1(a->tag) && FUNC0(a->pair, pair) == 0;
}