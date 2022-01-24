#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ Table ;
struct TYPE_11__ {char* zName; } ;
struct TYPE_10__ {int explain; int /*<<< orphan*/  iSelectId; int /*<<< orphan*/  pVdbe; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  OP_Explain ; 
 int /*<<< orphan*/  P4_DYNAMIC ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
  Parse *pParse,                  /* Parse context */
  Table *pTab,                    /* Table being queried */
  Index *pIdx                     /* Index used to optimize scan, or NULL */
){
  if( pParse->explain==2 ){
    int bCover = (pIdx!=0 && (FUNC0(pTab) || !FUNC1(pIdx)));
    char *zEqp = FUNC2(pParse->db, "SCAN TABLE %s%s%s",
        pTab->zName,
        bCover ? " USING COVERING INDEX " : "",
        bCover ? pIdx->zName : ""
    );
    FUNC3(
        pParse->pVdbe, OP_Explain, pParse->iSelectId, 0, 0, zEqp, P4_DYNAMIC
    );
  }
}