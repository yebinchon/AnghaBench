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
struct TYPE_3__ {scalar_t__ accError; } ;
typedef  TYPE_1__ sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_TOOBIG ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(sqlite3_context *context){
  sqlite3_str *pAccum;
  pAccum = (sqlite3_str*)FUNC0(context, 0);
  if( pAccum ){
    if( pAccum->accError==SQLITE_TOOBIG ){
      FUNC2(context);
    }else if( pAccum->accError==SQLITE_NOMEM ){
      FUNC1(context);
    }else{    
      const char *zText = FUNC4(pAccum);
      FUNC3(context, zText, -1, SQLITE_TRANSIENT);
    }
  }
}