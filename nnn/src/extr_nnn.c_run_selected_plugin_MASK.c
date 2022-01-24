#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ ctxactive; } ;
struct TYPE_8__ {char* c_path; char* c_last; char* c_name; TYPE_1__ c_cfg; } ;
struct TYPE_7__ {int curctx; } ;

/* Variables and functions */
 int CTX_MAX ; 
 int FALSE ; 
 int /*<<< orphan*/  F_NORMAL ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int TRUE ; 
 TYPE_2__ cfg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t cur ; 
 TYPE_4__* dents ; 
 char* g_buf ; 
 TYPE_3__* g_ctx ; 
 int /*<<< orphan*/  g_pipepath ; 
 int g_plinit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  plugindir ; 
 size_t FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(char **path, const char *file, char *newpath, char *runfile, char **lastname, char **lastdir)
{
	int fd;
	size_t len;

	if (!g_plinit) {
		FUNC3();
		g_plinit = TRUE;
	}

	fd = FUNC2(g_pipepath, O_RDONLY | O_NONBLOCK);
	if (fd == -1)
		return FALSE;

	/* Generate absolute path to plugin */
	FUNC1(plugindir, file, newpath);

	if (runfile && runfile[0]) {
		FUNC7(*lastname, runfile, NAME_MAX);
		FUNC6(newpath, *lastname, *path, *path, F_NORMAL);
	} else
		FUNC6(newpath, NULL, *path, *path, F_NORMAL);

	len = FUNC4(fd, g_buf, PATH_MAX);
	g_buf[len] = '\0';

	FUNC0(fd);

	if (len > 1) {
		int ctx = g_buf[0] - '0';

		if (ctx == 0 || ctx == cfg.curctx + 1) {
			FUNC7(*lastdir, *path, PATH_MAX);
			FUNC7(*path, g_buf + 1, PATH_MAX);
		} else if (ctx >= 1 && ctx <= CTX_MAX) {
			int r = ctx - 1;

			g_ctx[r].c_cfg.ctxactive = 0;
			FUNC5(&cfg, g_buf + 1, dents[cur].name, r);
			*path = g_ctx[r].c_path;
			*lastdir = g_ctx[r].c_last;
			*lastname = g_ctx[r].c_name;
		}
	}

	return TRUE;
}