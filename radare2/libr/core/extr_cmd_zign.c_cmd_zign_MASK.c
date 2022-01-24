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
struct TYPE_4__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (void*,char const*) ; 
 int FUNC1 (void*,char const*) ; 
 int FUNC2 (void*,char const*) ; 
 int FUNC3 (void*,char const*) ; 
 int FUNC4 (void*,char const*) ; 
 int FUNC5 (void*,char const*) ; 
 int FUNC6 (void*,char const*) ; 
 int FUNC7 (void*,char const*) ; 
 int /*<<< orphan*/  help_msg_z ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static int FUNC12(void *data, const char *input) {
	RCore *core = (RCore *) data;

	switch (*input) {
	case '\0':
	case '*':
	case 'q':
	case 'j':
		FUNC11 (core->anal, input[0]);
		break;
	case 'k':
		FUNC8 (core, "k anal/zigns/*");
		break;
	case '-':
		FUNC10 (core->anal, input + 1);
		break;
	case '.': // "z."
		return FUNC1 (data, input + 1);
	case 'o': // "zo"
		return FUNC5 (data, input + 1);
	case 'g': // "zg"
		return FUNC0 (data, "F");
	case 'a': // "za"
		return FUNC0 (data, input + 1);
	case 'f': // "zf"
		return FUNC3 (data, input + 1);
	case '/': // "z/"
		return FUNC6 (data, input + 1);
	case 'c': // "zc"
		return FUNC2 (data, input + 1);
	case 's': // "zs"
		return FUNC7 (data, input + 1);
	case 'i': // "zi"
		return FUNC4 (data, input + 1);
	case '?': // "z?"
		FUNC9 (core, help_msg_z);
		break;
	default:
		FUNC9 (core, help_msg_z);
		return false;
	}

	return true;
}