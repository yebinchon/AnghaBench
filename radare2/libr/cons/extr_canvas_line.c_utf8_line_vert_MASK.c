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
struct TYPE_2__ {scalar_t__ dotted_lines; } ;

/* Variables and functions */
 char* DASHED_LINE_VERT ; 
 char* DOTTED_LINE_VERT ; 
#define  DOT_STYLE_BACKEDGE 130 
#define  DOT_STYLE_CONDITIONAL 129 
#define  DOT_STYLE_NORMAL 128 
 char* RUNECODESTR_LINE_VERT ; 
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static char* FUNC1 (int dot_style) {
	if (FUNC0 ()->dotted_lines) {
		switch (dot_style) {
		case DOT_STYLE_NORMAL:      return RUNECODESTR_LINE_VERT;
		case DOT_STYLE_CONDITIONAL: return DOTTED_LINE_VERT;
		case DOT_STYLE_BACKEDGE:    return DASHED_LINE_VERT;
		}
	}
	return RUNECODESTR_LINE_VERT;
}