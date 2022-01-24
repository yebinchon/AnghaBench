#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ classes_ht; } ;
typedef  TYPE_2__ RBinFile ;
typedef  int /*<<< orphan*/  RBinClass ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RBinClass *FUNC2(RBinFile *bf, const char *name) {
	FUNC1 (bf && bf->o && bf->o->classes_ht && name, NULL);
	return FUNC0 (bf->o->classes_ht, name, NULL);
}