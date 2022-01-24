#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_2__ {int is_html; } ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int R_CORE_ANAL_GRAPHBODY ; 
 int R_CORE_ANAL_GRAPHDIFF ; 
 int R_CORE_ANAL_STAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static char *FUNC7(RCore *c, ut64 off) {
        bool tmp_html = FUNC4 ()->is_html;
        FUNC4 ()->is_html = false;
        FUNC3 ();
        FUNC5 (c, off, R_CORE_ANAL_GRAPHBODY | R_CORE_ANAL_GRAPHDIFF |  R_CORE_ANAL_STAR);
        const char *static_str = FUNC1 ();
        char *retstr = FUNC6 (static_str? static_str: "");
        FUNC2 ();
        FUNC0 (NULL);
        FUNC4 ()->is_html = tmp_html;
        return retstr;
}