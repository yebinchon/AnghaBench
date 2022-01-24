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
struct TYPE_3__ {int /*<<< orphan*/ * sdb; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,...) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char const*,char) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11 (RCore *core, RLineCompletion *completion, const char *str) {
	FUNC1 (core && completion && str);
	char *pipe = FUNC7 (str, '>');
	Sdb *sdb = core->sdb;
	char *lpath = NULL, *p1 = NULL, *out = NULL, *p2 = NULL;
	char *cur_pos = NULL, *cur_cmd = NULL, *next_cmd = NULL;
	char *temp_cmd = NULL, *temp_pos = NULL, *key = NULL;
	if (pipe) {
		str = FUNC5 (pipe + 1);
	}
	lpath = FUNC3 (str);
	p1 = FUNC10 (lpath, "/");
	if (p1) {
		*p1 = 0;
		char *ns = p1 + 1;
		p2 = FUNC10 (ns, "/");
		if (!p2) { // anal/m
			char *tmp = p1 + 1;
			int n = FUNC8 (tmp);
			out = FUNC6 (sdb, NULL, 0, "anal/**");
			if (!out) {
				return;
			}
			while (*out) {
				cur_pos = FUNC7 (out, '\n');
				if (!cur_pos) {
					break;
				}
				cur_cmd = FUNC2 (out, cur_pos - out);
				if (!FUNC9 (tmp, cur_cmd, n)) {
					char *cmplt = FUNC4 ("anal/%s/", cur_cmd);
					FUNC0 (completion, cmplt);
				}
				out += cur_pos - out + 1;
			}

		} else { // anal/meta/*
			char *tmp = p2 + 1;
			int n = FUNC8 (tmp);
			char *spltr = FUNC10 (ns, "/");
			*spltr = 0;
			next_cmd = FUNC4 ("anal/%s/*", ns);
			out = FUNC6 (sdb, NULL, 0, next_cmd);
			if (!out) {
				return;
			}
			while (*out) {
				temp_pos = FUNC7 (out, '\n');
				if (!temp_pos) {
					break;
				}
				temp_cmd = FUNC2 (out, temp_pos - out); // contains the key=value pair
				key = FUNC10 (temp_cmd, "=");
				*key = 0;
				if (!FUNC9 (tmp, temp_cmd, n)) {
					char *cmplt = FUNC4 ("anal/%s/%s", ns, temp_cmd);
					FUNC0 (completion, cmplt);
				}
				out += temp_pos - out + 1;
			}
		}
	} else {
		int n = FUNC8 (lpath);
		if (!FUNC9 (lpath, "anal", n)) {
			FUNC0 (completion, "anal/");
		}
	}
}