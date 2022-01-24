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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void const*,void const*,int) ; 

__attribute__((used)) static int FUNC3(
  void *NotUsed,
  int nKey1, const void *pKey1,
  int nKey2, const void *pKey2
){
  int rc, n;
  FUNC0(NotUsed);
  n = nKey1<nKey2 ? nKey1 : nKey2;
  /* EVIDENCE-OF: R-65033-28449 The built-in BINARY collation compares
  ** strings byte by byte using the memcmp() function from the standard C
  ** library. */
  FUNC1( pKey1 && pKey2 );
  rc = FUNC2(pKey1, pKey2, n);
  if( rc==0 ){
    rc = nKey1 - nKey2;
  }
  return rc;
}