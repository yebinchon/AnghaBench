#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char current; int /*<<< orphan*/  buff; int /*<<< orphan*/  decpoint; } ;
struct TYPE_10__ {int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  TK_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(LexState*ls,SemInfo*seminfo){
do{
FUNC8(ls);
}while(FUNC3(ls->current)||ls->current=='.');
if(FUNC1(ls,"Ee"))
FUNC1(ls,"+-");
while(FUNC2(ls->current)||ls->current=='_')
FUNC8(ls);
FUNC7(ls,'\0');
FUNC0(ls,'.',ls->decpoint);
if(!FUNC4(FUNC6(ls->buff),&seminfo->r))
FUNC5(ls,"malformed number",TK_NUMBER);
}