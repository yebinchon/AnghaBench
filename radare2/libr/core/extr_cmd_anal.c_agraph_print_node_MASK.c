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
struct TYPE_3__ {char* body; int /*<<< orphan*/  title; } ;
typedef  TYPE_1__ RANode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(RANode *n, void *user) {
	char *encbody, *cmd;
	int len = FUNC4 (n->body);

	if (len > 0 && n->body[len - 1] == '\n') {
		len--;
	}
	encbody = FUNC1 (n->body, len);
	cmd = FUNC3 ("agn \"%s\" base64:%s\n", n->title, encbody);
	FUNC2 (cmd);
	FUNC0 (cmd);
	FUNC0 (encbody);
}