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
typedef  scalar_t__ ut64 ;
struct r_bin_te_obj_t {int /*<<< orphan*/  kv; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinFile ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 struct r_bin_te_obj_t* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb) {
	FUNC2 (bf && bin_obj && b, false);
	ut64 sz = FUNC1 (b);
	if (sz == 0 || sz == UT64_MAX) {
		return false;
	}
	struct r_bin_te_obj_t *res = FUNC0 (b);
	if (res) {
		FUNC3 (sdb, "info", res->kv);
	}
	*bin_obj = res;
	return true;
}