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
struct TYPE_4__ {scalar_t__ methods_ht; } ;
typedef  int /*<<< orphan*/  RBinSymbol ;
typedef  TYPE_2__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static RBinSymbol *FUNC3(RBinFile *bf, const char *klass, const char *method) {
	FUNC1 (bf && bf->o && bf->o->methods_ht && klass && method, NULL);
	const char *name = FUNC2 ("%s::%s", klass, method);
	return FUNC0 (bf->o->methods_ht, name, NULL);
}