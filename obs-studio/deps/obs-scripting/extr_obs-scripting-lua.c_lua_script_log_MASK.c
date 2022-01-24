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
struct TYPE_3__ {char* array; } ;
struct obs_lua_script {TYPE_1__ log_chunk; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct obs_lua_script* current_lua_script ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int FUNC6(lua_State *script)
{
	struct obs_lua_script *data = current_lua_script;
	int log_level = (int)FUNC2(script, 1);
	const char *msg = FUNC3(script, 2);

	if (!msg)
		return 0;

	/* ------------------- */

	FUNC0(&data->log_chunk, msg);

	const char *start = data->log_chunk.array;
	char *endl = FUNC5(start, '\n');

	while (endl) {
		*endl = 0;
		FUNC4(&data->base, log_level, "%s", start);
		*endl = '\n';

		start = endl + 1;
		endl = FUNC5(start, '\n');
	}

	if (start && *start)
		FUNC4(&data->base, log_level, "%s", start);
	FUNC1(&data->log_chunk, 0);

	/* ------------------- */

	return 0;
}