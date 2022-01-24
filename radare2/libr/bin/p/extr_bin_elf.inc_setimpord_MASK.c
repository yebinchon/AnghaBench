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
typedef  size_t ut32 ;
struct TYPE_3__ {size_t imports_by_ord_size; int /*<<< orphan*/ * imports_by_ord; } ;
typedef  int /*<<< orphan*/  RBinImport ;
typedef  TYPE_1__ ELFOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ELFOBJ* eobj, ut32 ord, RBinImport *ptr) {
	if (!eobj->imports_by_ord || ord >= eobj->imports_by_ord_size) {
		return;
	}
	FUNC1 (eobj->imports_by_ord[ord]);
	eobj->imports_by_ord[ord] = FUNC0 (ptr);
}