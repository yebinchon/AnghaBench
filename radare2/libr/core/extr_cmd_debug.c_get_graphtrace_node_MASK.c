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
typedef  int /*<<< orphan*/  ut64 ;
struct trace_node {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  int /*<<< orphan*/  RGraph ;

/* Variables and functions */
 char* TN_KEY_FMT ; 
 int TN_KEY_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct trace_node*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RGraphNode *FUNC4 (RGraph *g, Sdb *nodes, struct trace_node *tn) {
	RGraphNode *gn;
	char tn_key[TN_KEY_LEN];

	FUNC3 (tn_key, TN_KEY_LEN, TN_KEY_FMT, tn->addr);
	gn = (RGraphNode *)(size_t)FUNC1 (nodes, tn_key, NULL);
	if (!gn) {
		gn = FUNC0 (g, tn);
		FUNC2 (nodes, tn_key, (ut64)(size_t)gn, 0);
	}
	return gn;
}