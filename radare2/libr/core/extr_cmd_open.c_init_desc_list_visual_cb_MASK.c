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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  RIODesc ;

/* Variables and functions */
 scalar_t__ fdsz ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(void *user, void *data, ut32 id) {
	RIODesc *desc = (RIODesc *)data;
	ut64 sz = FUNC0 (desc);
	if (sz > fdsz) {
		fdsz = sz;
	}
	return true;
}