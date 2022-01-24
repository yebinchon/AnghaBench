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
struct TYPE_3__ {int n; } ;
typedef  TYPE_1__ CountCtx ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(sqlite3_context *context, int argc, sqlite3_value **argv){
  CountCtx *p;
  p = FUNC1(context, sizeof(*p));
  if( (argc==0 || SQLITE_NULL!=FUNC3(argv[0])) && p ){
    p->n++;
  }

#ifndef SQLITE_OMIT_DEPRECATED
  /* The sqlite3_aggregate_count() function is deprecated.  But just to make
  ** sure it still operates correctly, verify that its count agrees with our 
  ** internal count when using count(*) and when the total count can be
  ** expressed as a 32-bit integer. */
  FUNC0( argc==1 || p==0 || p->n>0x7fffffff
          || p->n==FUNC2(context) );
#endif
}