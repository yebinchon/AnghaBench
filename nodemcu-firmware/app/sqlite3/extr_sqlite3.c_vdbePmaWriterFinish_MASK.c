#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t i64 ;
struct TYPE_4__ {int eFWErr; size_t iBufEnd; size_t iBufStart; size_t iWriteOff; int /*<<< orphan*/ * aBuffer; int /*<<< orphan*/  pFd; } ;
typedef  TYPE_1__ PmaWriter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(PmaWriter *p, i64 *piEof){
  int rc;
  if( p->eFWErr==0 && FUNC0(p->aBuffer) && p->iBufEnd>p->iBufStart ){
    p->eFWErr = FUNC2(p->pFd,
        &p->aBuffer[p->iBufStart], p->iBufEnd - p->iBufStart,
        p->iWriteOff + p->iBufStart
    );
  }
  *piEof = (p->iWriteOff + p->iBufEnd);
  FUNC3(p->aBuffer);
  rc = p->eFWErr;
  FUNC1(p, 0, sizeof(PmaWriter));
  return rc;
}