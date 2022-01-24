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
typedef  int /*<<< orphan*/  RListFree ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBinWasmSection ;
typedef  int /*<<< orphan*/  RBinWasmObj ;

/* Variables and functions */
 scalar_t__ free ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_import_entry ; 

__attribute__((used)) static RList *FUNC1 (RBinWasmObj *bin, RBinWasmSection *sec) {
	return FUNC0 (bin, sec, parse_import_entry, (RListFree)free);
}