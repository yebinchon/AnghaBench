#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pSchema; TYPE_3__* pIndex; } ;
typedef  TYPE_1__ Table ;
struct TYPE_13__ {struct TYPE_13__* pNext; } ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Parse *pParse, Table *pTab, char const *zColl){
  if( !FUNC0(pTab) ){
    Index *pIndex;              /* An index associated with pTab */

    for(pIndex=pTab->pIndex; pIndex; pIndex=pIndex->pNext){
      if( zColl==0 || FUNC1(zColl, pIndex) ){
        int iDb = FUNC4(pParse->db, pTab->pSchema);
        FUNC2(pParse, 0, iDb);
        FUNC3(pParse, pIndex, -1);
      }
    }
  }
}