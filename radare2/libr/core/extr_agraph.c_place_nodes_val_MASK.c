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
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  int /*<<< orphan*/  RAGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const RAGraph *g, const RGraphNode *gn, const RGraphNode *sibl, Sdb *res, int is_left) {
	if (is_left) {
		return FUNC1 (res, sibl) + FUNC0 (g, sibl, gn);
	}
	return FUNC1 (res, sibl) - FUNC0 (g, gn, sibl);
}