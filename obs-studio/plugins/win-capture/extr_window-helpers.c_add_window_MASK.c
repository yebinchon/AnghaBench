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
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  (* add_window_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,struct dstr*) ; 
 scalar_t__ FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 scalar_t__ FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(obs_property_t *p, HWND hwnd, add_window_cb callback)
{
	struct dstr class = {0};
	struct dstr title = {0};
	struct dstr exe = {0};
	struct dstr encoded = {0};
	struct dstr desc = {0};

	if (!FUNC8(&exe, hwnd))
		return;
	if (FUNC10(exe.array)) {
		FUNC3(&exe);
		return;
	}

	FUNC9(&title, hwnd);
	if (FUNC2(&exe, "explorer.exe") == 0 && FUNC4(&title)) {
		FUNC3(&exe);
		FUNC3(&title);
		return;
	}

	FUNC7(&class, hwnd);

	if (callback && !callback(title.array, class.array, exe.array)) {
		FUNC3(&title);
		FUNC3(&class);
		FUNC3(&exe);
		return;
	}

	FUNC5(&desc, "[%s]: %s", exe.array, title.array);

	FUNC6(&title);
	FUNC6(&class);
	FUNC6(&exe);

	FUNC1(&encoded, &title);
	FUNC0(&encoded, ":");
	FUNC1(&encoded, &class);
	FUNC0(&encoded, ":");
	FUNC1(&encoded, &exe);

	FUNC11(p, desc.array, encoded.array);

	FUNC3(&encoded);
	FUNC3(&desc);
	FUNC3(&class);
	FUNC3(&title);
	FUNC3(&exe);
}