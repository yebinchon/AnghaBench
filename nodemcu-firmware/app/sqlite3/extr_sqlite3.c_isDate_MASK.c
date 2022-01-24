#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_9__ {int /*<<< orphan*/  iJD; scalar_t__ isError; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int SQLITE_FLOAT ; 
 int SQLITE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv,
  DateTime *p
){
  int i, n;
  const unsigned char *z;
  int eType;
  FUNC1(p, 0, sizeof(*p));
  if( argc==0 ){
    return FUNC4(context, p);
  }
  if( (eType = FUNC9(argv[0]))==SQLITE_FLOAT
                   || eType==SQLITE_INTEGER ){
    FUNC5(p, FUNC7(argv[0]));
  }else{
    z = FUNC8(argv[0]);
    if( !z || FUNC2(context, (char*)z, p) ){
      return 1;
    }
  }
  for(i=1; i<argc; i++){
    z = FUNC8(argv[i]);
    n = FUNC6(argv[i]);
    if( z==0 || FUNC3(context, (char*)z, n, p) ) return 1;
  }
  FUNC0(p);
  if( p->isError || !FUNC10(p->iJD) ) return 1;
  return 0;
}