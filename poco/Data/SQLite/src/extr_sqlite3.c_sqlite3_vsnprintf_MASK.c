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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {size_t nChar; } ;
typedef  TYPE_1__ StrAccum ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

char *FUNC2(int n, char *zBuf, const char *zFormat, va_list ap){
  StrAccum acc;
  if( n<=0 ) return zBuf;
#ifdef SQLITE_ENABLE_API_ARMOR
  if( zBuf==0 || zFormat==0 ) {
    (void)SQLITE_MISUSE_BKPT;
    if( zBuf ) zBuf[0] = 0;
    return zBuf;
  }
#endif
  FUNC0(&acc, 0, zBuf, n, 0);
  FUNC1(&acc, zFormat, ap);
  zBuf[acc.nChar] = 0;
  return zBuf;
}