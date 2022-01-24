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
struct TYPE_6__ {scalar_t__ trnc; } ;
typedef  TYPE_1__ gbtree_vinfo ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_7__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
typedef  TYPE_2__ GBT_VARKEY_R ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__ const*) ; 

__attribute__((used)) static bool
FUNC1(const GBT_VARKEY_R *node, const bytea *query, const gbtree_vinfo *tinfo)
{
	return (tinfo->trnc && (
							FUNC0(node->lower, query, tinfo) ||
							FUNC0(node->upper, query, tinfo)
							));
}