#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int is_valid; } ;
struct TYPE_11__ {int data_len; char* data; TYPE_1__ stop_reason; } ;
typedef  TYPE_2__ libgdbr_t ;
struct TYPE_12__ {int valid; } ;
typedef  int /*<<< orphan*/  (* PrintfCallback ) (char*,char*) ;

/* Variables and functions */
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 TYPE_5__ reg_cache ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 

int FUNC13(libgdbr_t *g, const char *cmd, PrintfCallback cb_printf) {
	int ret = -1;
	char *buf;
	size_t len;

	if (!g || !cmd) {
		return -1;
	}
	len = FUNC10 (cmd) * 2 + 8;
	if (!(buf = FUNC0 (len, sizeof (char)))) {
		return -1;
	}
	FUNC9 (buf, "qRcmd,");

	if (!FUNC2 (g)) {
		goto end;
	}
	g->stop_reason.is_valid = false;
	reg_cache.valid = false;
	FUNC5 (cmd, FUNC10 (cmd), buf + 6);
	if ((ret = FUNC8 (g, buf)) < 0) {
		goto end;
	}
	if ((ret = FUNC6 (g, false)) < 0) {
		goto end;
	}
	while (1) {
		if ((ret = FUNC7 (g)) < 0) {
			goto end;
		}
		if (g->data_len == 0) {
			ret = -1;
			goto end;
		}
		if (g->data_len == 3 && g->data[0] == 'E'
			    && FUNC4 (g->data[1]) && FUNC4 (g->data[2])) {
			ret = -1;
			goto end;
		}
		if (!FUNC11 (g->data, "OK", 2)) {
			break;
		}
		if (g->data[0] == 'O' && g->data_len % 2 == 1) {
			// Console output from gdbserver
			FUNC12 (g->data + 1, g->data_len - 1, g->data + 1);
			g->data[g->data_len - 1] = '\0';
			cb_printf ("%s", g->data + 1);
		}
		if ((ret = FUNC6 (g, false)) < 0) {
			goto end;
		}
	}

	ret = 0;
end:
	if (buf) {
		FUNC1 (buf);
	}
	FUNC3 (g);
	return ret;
}