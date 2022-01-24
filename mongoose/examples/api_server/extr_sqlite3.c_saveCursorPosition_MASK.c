#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ eState; scalar_t__ pKey; TYPE_1__** apPage; scalar_t__ nKey; } ;
struct TYPE_9__ {scalar_t__ intKey; } ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_REQUIRESEEK ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,void*) ; 
 int FUNC5 (TYPE_2__*,scalar_t__*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(BtCursor *pCur){
  int rc;

  FUNC0( CURSOR_VALID==pCur->eState );
  FUNC0( 0==pCur->pKey );
  FUNC0( FUNC2(pCur) );

  rc = FUNC5(pCur, &pCur->nKey);
  FUNC0( rc==SQLITE_OK );  /* KeySize() cannot fail */

  /* If this is an intKey table, then the above call to BtreeKeySize()
  ** stores the integer key in pCur->nKey. In this case this value is
  ** all that is required. Otherwise, if pCur is not open on an intKey
  ** table, then malloc space for and store the pCur->nKey bytes of key 
  ** data.
  */
  if( 0==pCur->apPage[0]->intKey ){
    void *pKey = FUNC6( (int)pCur->nKey );
    if( pKey ){
      rc = FUNC4(pCur, 0, (int)pCur->nKey, pKey);
      if( rc==SQLITE_OK ){
        pCur->pKey = pKey;
      }else{
        FUNC7(pKey);
      }
    }else{
      rc = SQLITE_NOMEM;
    }
  }
  FUNC0( !pCur->apPage[0]->intKey || !pCur->pKey );

  if( rc==SQLITE_OK ){
    FUNC1(pCur);
    pCur->eState = CURSOR_REQUIRESEEK;
  }

  FUNC3(pCur);
  return rc;
}