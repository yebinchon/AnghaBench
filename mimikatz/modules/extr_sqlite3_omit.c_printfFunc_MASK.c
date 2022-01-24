#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_10__ {int /*<<< orphan*/ * aLimit; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_12__ {int nArg; int /*<<< orphan*/ ** apArg; scalar_t__ nUsed; } ;
struct TYPE_11__ {int nChar; int /*<<< orphan*/  printfFlags; } ;
typedef  TYPE_2__ StrAccum ;
typedef  TYPE_3__ PrintfArguments ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 size_t SQLITE_LIMIT_LENGTH ; 
 int /*<<< orphan*/  SQLITE_PRINTF_SQLFUNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  PrintfArguments x;
  StrAccum str;
  const char *zFormat;
  int n;
  sqlite3 *db = FUNC2(context);

  if( argc>=1 && (zFormat = (const char*)FUNC5(argv[0]))!=0 ){
    x.nArg = argc-1;
    x.nUsed = 0;
    x.apArg = argv+1;
    FUNC1(&str, db, 0, 0, db->aLimit[SQLITE_LIMIT_LENGTH]);
    str.printfFlags = SQLITE_PRINTF_SQLFUNC;
    FUNC4(&str, zFormat, &x);
    n = str.nChar;
    FUNC3(context, FUNC0(&str), n,
                        SQLITE_DYNAMIC);
  }
}