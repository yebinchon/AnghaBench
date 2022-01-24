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
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinFile ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4 (RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
	FUNC3 (bf && buf && FUNC2 (buf) != UT64_MAX, NULL);

	if (FUNC0 (buf)) {
		*bin_obj = FUNC1 (bf, buf);
		return true;
	}
	return false;
}