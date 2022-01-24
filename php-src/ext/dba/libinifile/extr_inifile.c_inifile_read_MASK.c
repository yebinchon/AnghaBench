#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* value; } ;
struct TYPE_11__ {char* name; void* group; } ;
struct TYPE_8__ {void* pos; TYPE_3__ val; TYPE_7__ key; } ;
typedef  TYPE_1__ line_type ;
struct TYPE_9__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_2__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static int FUNC9(inifile *dba, line_type *ln) {
	char *fline;
	char *pos;

	FUNC5(&ln->val);
	while ((fline = FUNC6(dba->fp, NULL, 0)) != NULL) {
		if (fline) {
			if (fline[0] == '[') {
				/* A value name cannot start with '['
				 * So either we find a ']' or we found an error
				 */
				pos = FUNC8(fline+1, ']');
				if (pos) {
					*pos = '\0';
					FUNC3(&ln->key);
					ln->key.group = FUNC2(fline+1);
					ln->key.name = FUNC1("");
					ln->pos = FUNC7(dba->fp);
					FUNC0(fline);
					return 1;
				} else {
					FUNC0(fline);
					continue;
				}
			} else {
				pos = FUNC8(fline, '=');
				if (pos) {
					*pos = '\0';
					/* keep group or make empty if not existent */
					if (!ln->key.group) {
						ln->key.group = FUNC1("");
					}
					if (ln->key.name) {
						FUNC0(ln->key.name);
					}
					ln->key.name = FUNC2(fline);
					ln->val.value = FUNC2(pos+1);
					ln->pos = FUNC7(dba->fp);
					FUNC0(fline);
					return 1;
				} else {
					/* simply ignore lines without '='
					 * those should be comments
					 */
					 FUNC0(fline);
					 continue;
				}
			}
		}
	}
	FUNC4(ln);
	return 0;
}