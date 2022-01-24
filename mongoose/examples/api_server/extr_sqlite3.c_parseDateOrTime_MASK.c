#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {int validJD; scalar_t__ iJD; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
  sqlite3_context *context, 
  const char *zDate, 
  DateTime *p
){
  double r;
  if( FUNC1(zDate,p)==0 ){
    return 0;
  }else if( FUNC0(zDate, p)==0 ){
    return 0;
  }else if( FUNC4(zDate,"now")==0){
    return FUNC2(context, p);
  }else if( FUNC3(zDate, &r, FUNC5(zDate), SQLITE_UTF8) ){
    p->iJD = (sqlite3_int64)(r*86400000.0 + 0.5);
    p->validJD = 1;
    return 0;
  }
  return 1;
}