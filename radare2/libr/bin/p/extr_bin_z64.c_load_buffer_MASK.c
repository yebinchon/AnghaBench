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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinFile ;
typedef  int /*<<< orphan*/  N64Header ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  n64_header ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb) {
	if (FUNC0 (b)) {
		ut8 buf[sizeof (N64Header)] = {0};
		FUNC2 (b, 0, buf, sizeof (buf));
		*bin_obj = FUNC1 (&n64_header, buf, sizeof (N64Header));
		return true;
	}
	return false;
}