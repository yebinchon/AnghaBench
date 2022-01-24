#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/ * Walfile ;
struct TYPE_2__ {int /*<<< orphan*/  currpos; } ;
typedef  TYPE_1__ TarMethodFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static off_t
FUNC2(Walfile f)
{
	FUNC0(f != NULL);
	FUNC1();

	return ((TarMethodFile *) f)->currpos;
}