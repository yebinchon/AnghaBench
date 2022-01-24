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
struct TYPE_3__ {int /*<<< orphan*/  title; int /*<<< orphan*/  body; } ;
typedef  TYPE_1__ RANode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(RANode *n, void *user) {
	char *label = FUNC2 (n->body);
	//label = r_str_replace (label, "\n", "\\l", 1);
	if (!label || !*label) {
		FUNC1 ("\"%s\" [URL=\"%s\", color=\"lightgray\", label=\"%s\"]\n",
				n->title, n->title, n->title);
	} else {
		FUNC1 ("\"%s\" [URL=\"%s\", color=\"lightgray\", label=\"%s\\n%s\"]\n",
				n->title, n->title, n->title, label);
	}
	FUNC0 (label);
}