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
struct r_bin_dex_obj_t {int dummy; } ;
typedef  int /*<<< orphan*/  RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  mdb ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut64 FUNC2(RBinFile *bf, struct r_bin_dex_obj_t *dex, int idx) {
	// ut64 off = dex->header.method_offset + idx;
	return FUNC1 (mdb, FUNC0 ("method.%d", idx), 0);
}