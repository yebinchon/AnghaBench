#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_8__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  io; } ;
struct TYPE_7__ {int /*<<< orphan*/  address; TYPE_1__* anal; } ;
struct TYPE_6__ {int /*<<< orphan*/  big_endian; } ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_REF_TYPE_DATA ; 
 scalar_t__ UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ esilbreak_last_data ; 
 scalar_t__ esilbreak_last_read ; 
 TYPE_3__* mycore ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ntarget ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(RAnalEsil *esil, ut64 addr, ut8 *buf, int len) {
	ut8 str[128];
	if (addr != UT64_MAX) {
		esilbreak_last_read = addr;
	}
	if (FUNC1 (mycore->io, addr) && FUNC3 (mycore->io, addr, (ut8*)buf, len)) {
		ut64 refptr;
		bool trace = true;
		switch (len) {
		case 2:
			esilbreak_last_data = refptr = (ut64)FUNC4 (buf, esil->anal->big_endian);
			break;
		case 4:
			esilbreak_last_data = refptr = (ut64)FUNC5 (buf, esil->anal->big_endian);
			break;
		case 8:
			esilbreak_last_data = refptr = FUNC6 (buf, esil->anal->big_endian);
			break;
		default:
			trace = false;
			FUNC3 (mycore->io, addr, (ut8*)buf, len);
			break;
		}
		// TODO incorrect
		bool validRef = false;
		if (trace && FUNC1 (mycore->io, refptr)) {
			if (ntarget == UT64_MAX || ntarget == refptr) {
				str[0] = 0;
				if (FUNC3 (mycore->io, refptr, str, sizeof (str)) < 1) {
					//eprintf ("Invalid read\n");
					str[0] = 0;
					validRef = false;
				} else {
					FUNC2 (mycore->anal, esil->address, refptr, R_ANAL_REF_TYPE_DATA);
					str[sizeof (str) - 1] = 0;
					FUNC0 (mycore, esil->address, refptr);
					esilbreak_last_data = UT64_MAX;
					validRef = true;
				}
			}
		}

		/** resolve ptr */
		if (ntarget == UT64_MAX || ntarget == addr || (ntarget == UT64_MAX && !validRef)) {
			FUNC2 (mycore->anal, esil->address, addr, R_ANAL_REF_TYPE_DATA);
		}
	}
	return 0; // fallback
}