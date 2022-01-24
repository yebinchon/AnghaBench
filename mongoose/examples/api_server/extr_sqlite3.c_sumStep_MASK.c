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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  scalar_t__ i64 ;
struct TYPE_3__ {int approx; int overflow; int /*<<< orphan*/  rSum; int /*<<< orphan*/  iSum; int /*<<< orphan*/  cnt; } ;
typedef  TYPE_1__ SumCtx ;

/* Variables and functions */
 int SQLITE_INTEGER ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3_context *context, int argc, sqlite3_value **argv){
  SumCtx *p;
  int type;
  FUNC1( argc==1 );
  FUNC0(argc);
  p = FUNC3(context, sizeof(*p));
  type = FUNC6(argv[0]);
  if( p && type!=SQLITE_NULL ){
    p->cnt++;
    if( type==SQLITE_INTEGER ){
      i64 v = FUNC5(argv[0]);
      p->rSum += v;
      if( (p->approx|p->overflow)==0 && FUNC2(&p->iSum, v) ){
        p->overflow = 1;
      }
    }else{
      p->rSum += FUNC4(argv[0]);
      p->approx = 1;
    }
  }
}