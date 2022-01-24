#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dstvar; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  callname; } ;
struct TYPE_9__ {TYPE_1__ lang; TYPE_2__* remit; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  (* set_string ) (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ;int /*<<< orphan*/  (* comment ) (TYPE_3__*,char*,char*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ REggEmit ;
typedef  TYPE_3__ REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC7(REgg *egg, char *str, int filter) {
	int dotrim;
	int i, j, len, ch;
	REggEmit *e = egg->remit;

	e->comment (egg, "encode %s string (%s) (%s)",
		filter? "filtered": "unfiltered", str, egg->lang.callname);

// fixed by izhuer
	if (filter) {
		for (i = 0; str[i]; i++) {
			dotrim = 0;
			if (str[i] == '\\') {
				switch (str[i + 1]) {
				case 't':
					str[i] = '\t';
					dotrim = 1;
					break;
				case 'n':
					str[i] = '\n';
					dotrim = 1;
					break;
				case 'e':
					str[i] = '\x1b';
					dotrim = 1;
					break;
				case 'x':
					ch = FUNC3 (str + i + 2);
					if (ch == -1) {
						FUNC1 ("%s:%d Error string format\n",
							egg->lang.file, egg->lang.line);
					}
					str[i] = (char) ch;
					dotrim = 3;
					break;
				default:
					break;
				}
				if (dotrim) {
					FUNC2 (str + i + 1, str + i + dotrim + 1,
						FUNC4 (str + i + dotrim + 1) + 1);
				}
				// DO NOT forget the '\x00' terminate char
			}
		}
	}

	len = FUNC4 (str);
	j = (len - len % e->size) + e->size;
	e->set_string (egg, egg->lang.dstvar, str, j);
	FUNC0 (egg->lang.dstvar);
}