#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

int FUNC4() {
    FUNC2("%s\n", "<meta charset='utf-8' emacsmode='-*- markdown -*-'>");
    FUNC2("%s\n", "<link rel='stylesheet' href='https://casual-effects.com/markdeep/latest/apidoc.css?'>");

    for( int fsm_S = 0, fsm_D = 0, fsm_H = 0; !FUNC0(stdin); ) {
        int chr = FUNC1(stdin);
        if( fsm_S > 3 || fsm_D > 3 || fsm_H > 3 ) {
            FUNC3(chr, stdout);
            if( chr != '\r' && chr != '\n' ) continue;
        }
        /**/ if( fsm_S <= 2 && chr == '/' && !fsm_D && !fsm_H ) fsm_S++;
        else if( fsm_S == 3 && chr == ' ' && !fsm_D && !fsm_H ) fsm_S++;
        else if( fsm_D <= 2 && chr == '-' && !fsm_S && !fsm_H ) fsm_D++;
        else if( fsm_D == 3 && chr == ' ' && !fsm_S && !fsm_H ) fsm_D++;
        else if( fsm_H <= 2 && chr == '#' && !fsm_S && !fsm_D ) fsm_H++;
        else if( fsm_H == 3 && chr == ' ' && !fsm_S && !fsm_D ) fsm_H++;
        else fsm_S = fsm_D = fsm_H = 0;
    }

    FUNC2("%s\n", "<script>markdeepOptions={tocStyle:'medium'};</script>");
    FUNC2("%s\n", "<!-- Markdeep: --><script src='https://casual-effects.com/markdeep/latest/markdeep.min.js?'></script>");
}