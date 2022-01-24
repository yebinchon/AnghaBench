#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* anal; } ;
struct TYPE_8__ {int bits; } ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC4(RAnalEsil *esil) {
	switch (esil->anal->bits) {
	case 64: return FUNC3 (esil);
	case 32: return FUNC2 (esil);
	case 16: return FUNC1 (esil);
	case 8: return FUNC0 (esil);
	}
	return 0;
}