#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char const* u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  char const* i16 ;
struct TYPE_3__ {int nColumn; int isResized; char const** azColl; char const** aiColumn; char const** aSortOrder; } ;
typedef  TYPE_1__ Index ;

/* Variables and functions */
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const**,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(sqlite3 *db, Index *pIdx, int N){
  char *zExtra;
  int nByte;
  if( pIdx->nColumn>=N ) return SQLITE_OK;
  FUNC0( pIdx->isResized==0 );
  nByte = (sizeof(char*) + sizeof(i16) + 1)*N;
  zExtra = FUNC2(db, nByte);
  if( zExtra==0 ) return SQLITE_NOMEM_BKPT;
  FUNC1(zExtra, pIdx->azColl, sizeof(char*)*pIdx->nColumn);
  pIdx->azColl = (const char**)zExtra;
  zExtra += sizeof(char*)*N;
  FUNC1(zExtra, pIdx->aiColumn, sizeof(i16)*pIdx->nColumn);
  pIdx->aiColumn = (i16*)zExtra;
  zExtra += sizeof(i16)*N;
  FUNC1(zExtra, pIdx->aSortOrder, pIdx->nColumn);
  pIdx->aSortOrder = (u8*)zExtra;
  pIdx->nColumn = N;
  pIdx->isResized = 1;
  return SQLITE_OK;
}