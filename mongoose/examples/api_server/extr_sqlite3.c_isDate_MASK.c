#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_7__ {int validJD; scalar_t__ iJD; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int SQLITE_FLOAT ; 
 int SQLITE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv, 
  DateTime *p
){
  int i;
  const unsigned char *z;
  int eType;
  FUNC0(p, 0, sizeof(*p));
  if( argc==0 ){
    return FUNC3(context, p);
  }
  if( (eType = FUNC6(argv[0]))==SQLITE_FLOAT
                   || eType==SQLITE_INTEGER ){
    p->iJD = (sqlite3_int64)(FUNC4(argv[0])*86400000.0 + 0.5);
    p->validJD = 1;
  }else{
    z = FUNC5(argv[0]);
    if( !z || FUNC1(context, (char*)z, p) ){
      return 1;
    }
  }
  for(i=1; i<argc; i++){
    z = FUNC5(argv[i]);
    if( z==0 || FUNC2(context, (char*)z, p) ) return 1;
  }
  return 0;
}