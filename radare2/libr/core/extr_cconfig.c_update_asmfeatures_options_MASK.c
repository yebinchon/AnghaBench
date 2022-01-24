#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* free ) (char*) ;} ;
struct TYPE_11__ {TYPE_7__* options; } ;
struct TYPE_10__ {TYPE_2__* assembler; } ;
struct TYPE_9__ {TYPE_1__* cur; } ;
struct TYPE_8__ {char const* features; } ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*) ; 
 int FUNC2 (char*,char) ; 
 char* FUNC3 (char*,int) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(RCore *core, RConfigNode *node) {
	int i, argc;

	if (core && core->assembler && core->assembler->cur) {
		if (core->assembler->cur->features) {
			char *features = FUNC4 (core->assembler->cur->features);
			argc = FUNC2 (features, ',');
			for (i = 0; i < argc; i++) {
				node->options->free = free;
				const char *feature = FUNC3 (features, i);
				if (feature) {
					FUNC1 (node->options, FUNC4 (feature));
				}
			}
			FUNC0 (features);
		}
	}
}