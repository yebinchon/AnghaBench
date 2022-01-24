#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zMsg ;
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_7__ {int /*<<< orphan*/  pLogArg; int /*<<< orphan*/  (* xLog ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {scalar_t__ useMalloc; } ;
typedef  TYPE_1__ StrAccum ;

/* Variables and functions */
 int SQLITE_PRINT_BUF_SIZE ; 
 TYPE_5__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int iErrCode, const char *zFormat, va_list ap){
  StrAccum acc;                          /* String accumulator */
  char zMsg[SQLITE_PRINT_BUF_SIZE*3];    /* Complete log message */

  FUNC1(&acc, zMsg, sizeof(zMsg), 0);
  acc.useMalloc = 0;
  FUNC2(&acc, 0, zFormat, ap);
  sqlite3GlobalConfig.xLog(sqlite3GlobalConfig.pLogArg, iErrCode,
                           FUNC0(&acc));
}