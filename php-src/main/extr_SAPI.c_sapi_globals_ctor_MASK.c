#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  known_post_content_types; } ;
typedef  TYPE_1__ sapi_globals_struct ;

/* Variables and functions */
 int /*<<< orphan*/  _type_dtor ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(sapi_globals_struct *sapi_globals)
{
	FUNC0(sapi_globals, 0, sizeof(*sapi_globals));
	FUNC2(&sapi_globals->known_post_content_types, 8, NULL, _type_dtor, 1, 0);
	FUNC1();
}