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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut32 ;
typedef  scalar_t__ mach0_ut ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_CLASS_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int*,int*,TYPE_1__*) ; 

__attribute__((used)) static char *FUNC7(RBinFile *bf, mach0_ut p, ut32 *offset, ut32 *left) {
	FUNC5 (bf && offset && left, NULL);

	mach0_ut paddr = FUNC6 (p, offset, left, bf);
	if (paddr == 0 || *left <= 1) {
		return NULL;
	}

	int name_len = FUNC1 (MAX_CLASS_NAME_LEN, *left);
	char *name = FUNC2 (1, name_len + 1);
	int len = FUNC4 (bf->buf, paddr, (ut8 *)name, name_len);
	if (len < name_len) {
		FUNC3 ("Error reading\n");
		FUNC0 (name);
		return NULL;
	}

	return name;
}