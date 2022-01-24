#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(RCore *core, const char *str) {
	char *file = FUNC3 ("rarun2");
	char *s = FUNC5 (str);
	FUNC1 (core->config, "dbg.profile", file);
	FUNC4 (s, ',', '\n');
	FUNC2 (file, (const ut8*)s, FUNC6 (s), 0);
	FUNC2 (file, (const ut8*)"\n", 1, 1);
	FUNC0 (file);
}