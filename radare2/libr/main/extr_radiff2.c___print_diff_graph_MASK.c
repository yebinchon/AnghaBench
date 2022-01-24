#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  graph; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
#define  GRAPH_DEFAULT_MODE 136 
#define  GRAPH_DOT_MODE 135 
#define  GRAPH_GML_MODE 134 
#define  GRAPH_INTERACTIVE_MODE 133 
#define  GRAPH_JSON_DIS_MODE 132 
#define  GRAPH_JSON_MODE 131 
#define  GRAPH_SDB_MODE 130 
#define  GRAPH_STAR_MODE 129 
#define  GRAPH_TINY_MODE 128 
 int R_CORE_ANAL_GRAPHBODY ; 
 int R_CORE_ANAL_GRAPHDIFF ; 
 int R_CORE_ANAL_JSON ; 
 int R_CORE_ANAL_JSON_FORMAT_DISASM ; 
 int R_CORE_ANAL_STAR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(RCore *c, ut64 off, int gmode) {
        int opts = R_CORE_ANAL_GRAPHBODY | R_CORE_ANAL_GRAPHDIFF;
        int use_utf8 = FUNC2 (c->config, "scr.utf8");
        FUNC1(c->graph);
        switch (gmode) {
        case GRAPH_DOT_MODE:
                FUNC5 (c, off, opts);
                break;
        case GRAPH_STAR_MODE:
                FUNC5 (c, off, opts |  R_CORE_ANAL_STAR);
                break;
        case GRAPH_TINY_MODE:
                FUNC0 (c, off);
                FUNC4 (c, use_utf8, "t");
                break;
        case GRAPH_INTERACTIVE_MODE:
                FUNC0 (c, off);
                FUNC4 (c, use_utf8, "v");
                FUNC3 ();
                break;
        case GRAPH_SDB_MODE:
                FUNC0 (c, off);
                FUNC4 (c, use_utf8, "k");
                break;
        case GRAPH_GML_MODE:
                FUNC0 (c, off);
                FUNC4 (c, use_utf8, "g");
                break;
        case GRAPH_JSON_MODE:
                FUNC5 (c, off, opts | R_CORE_ANAL_JSON);
                break;
        case GRAPH_JSON_DIS_MODE:
                FUNC5 (c, off, opts | R_CORE_ANAL_JSON | R_CORE_ANAL_JSON_FORMAT_DISASM);
                break;
        case GRAPH_DEFAULT_MODE:
        default:
                FUNC0 (c, off);
                FUNC4 (c, use_utf8, "");
                FUNC3 ();
        break;
        }
}