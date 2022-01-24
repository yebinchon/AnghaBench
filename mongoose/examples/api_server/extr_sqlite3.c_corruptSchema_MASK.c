#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/  rc; int /*<<< orphan*/ * pzErrMsg; TYPE_1__* db; } ;
typedef  TYPE_2__ InitData ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_CORRUPT_BKPT ; 
 int /*<<< orphan*/  SQLITE_NOMEM ; 
 int SQLITE_RecoveryMode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*,char const*) ; 

__attribute__((used)) static void FUNC2(
  InitData *pData,     /* Initialization context */
  const char *zObj,    /* Object being parsed at the point of error */
  const char *zExtra   /* Error information */
){
  sqlite3 *db = pData->db;
  if( !db->mallocFailed && (db->flags & SQLITE_RecoveryMode)==0 ){
    if( zObj==0 ) zObj = "?";
    FUNC1(pData->pzErrMsg, db,
      "malformed database schema (%s)", zObj);
    if( zExtra ){
      *pData->pzErrMsg = FUNC0(db, *pData->pzErrMsg, 
                                 "%s - %s", *pData->pzErrMsg, zExtra);
    }
  }
  pData->rc = db->mallocFailed ? SQLITE_NOMEM : SQLITE_CORRUPT_BKPT;
}