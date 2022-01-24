#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  DateTime ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC4 (char const*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_context *context,
  const char *zDate,
  DateTime *p
){
  double r;
  if( FUNC1(zDate,p)==0 ){
    return 0;
  }else if( FUNC0(zDate, p)==0 ){
    return 0;
  }else if( FUNC5(zDate,"now")==0){
    return FUNC2(context, p);
  }else if( FUNC4(zDate, &r, FUNC6(zDate), SQLITE_UTF8) ){
    FUNC3(p, r);
    return 0;
  }
  return 1;
}