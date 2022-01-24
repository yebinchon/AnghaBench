#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* rfs; } ;
struct TYPE_5__ {char** cwd; } ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void FUNC4(RCore* core, RLineCompletion *completion, const char *str) {
	FUNC1 (str);
	char *pipe = FUNC3 (str, '>');
	char *path = (core->rfs && *(core->rfs->cwd)) ? *(core->rfs->cwd): "/";
	if (pipe) {
		str = FUNC2 (pipe + 1);
	}
	if (str && !*str) {
		FUNC0 (completion, core, str, path);
	} else {
		FUNC0 (completion, core, str, str);
	}
}