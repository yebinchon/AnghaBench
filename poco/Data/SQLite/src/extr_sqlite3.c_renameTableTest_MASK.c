#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_xauth ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_19__ {int flags; scalar_t__ xAuth; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int /*<<< orphan*/  sNC ;
struct TYPE_21__ {TYPE_4__* pParse; } ;
struct TYPE_20__ {int rc; TYPE_2__* pNewTrigger; scalar_t__ nErr; TYPE_1__* pNewTable; } ;
struct TYPE_18__ {int /*<<< orphan*/  pTabSchema; } ;
struct TYPE_17__ {scalar_t__ pSelect; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ NameContext ;

/* Variables and functions */
 int SQLITE_LegacyAlter ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,char const*,int,TYPE_3__*,char const*,int) ; 
 int FUNC5 (TYPE_4__*,char const*) ; 
 int FUNC6 (TYPE_3__*,char const*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,scalar_t__,TYPE_5__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC9(context);
  char const *zDb = (const char*)FUNC12(argv[0]);
  char const *zInput = (const char*)FUNC12(argv[1]);
  int bTemp = FUNC11(argv[4]);
  int isLegacy = (db->flags & SQLITE_LegacyAlter);

#ifndef SQLITE_OMIT_AUTHORIZATION
  sqlite3_xauth xAuth = db->xAuth;
  db->xAuth = 0;
#endif

  FUNC0(NotUsed);
  if( zDb && zInput ){
    int rc;
    Parse sParse;
    rc = FUNC4(&sParse, zDb, 1, db, zInput, bTemp);
    if( rc==SQLITE_OK ){
      if( isLegacy==0 && sParse.pNewTable && sParse.pNewTable->pSelect ){
        NameContext sNC;
        FUNC1(&sNC, 0, sizeof(sNC));
        sNC.pParse = &sParse;
        FUNC8(&sParse, sParse.pNewTable->pSelect, &sNC);
        if( sParse.nErr ) rc = sParse.rc;
      }

      else if( sParse.pNewTrigger ){
        if( isLegacy==0 ){
          rc = FUNC5(&sParse, bTemp ? 0 : zDb);
        }
        if( rc==SQLITE_OK ){
          int i1 = FUNC7(db, sParse.pNewTrigger->pTabSchema);
          int i2 = FUNC6(db, zDb);
          if( i1==i2 ) FUNC10(context, 1);
        }
      }
    }

    if( rc!=SQLITE_OK ){
      FUNC2(context, 1, argv[2], argv[3], &sParse);
    }
    FUNC3(&sParse);
  }

#ifndef SQLITE_OMIT_AUTHORIZATION
  db->xAuth = xAuth;
#endif
}