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
typedef  int /*<<< orphan*/  wchar_t ;
struct game_capture {int /*<<< orphan*/  app_sid; scalar_t__ is_app; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GC_MAPPING_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline HANDLE FUNC4(struct game_capture *gc,
				      const wchar_t *name, DWORD id)
{
	wchar_t new_name[64];
	FUNC1(new_name, 64, L"%s%lu", name, id);

	FUNC2("map id: %S", new_name);

	return gc->is_app ? FUNC3(gc->app_sid, new_name)
			  : FUNC0(GC_MAPPING_FLAGS, false, new_name);
}