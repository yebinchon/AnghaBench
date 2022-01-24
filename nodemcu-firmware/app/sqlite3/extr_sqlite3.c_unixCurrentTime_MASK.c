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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  double sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vfs *NotUsed, double *prNow){
  sqlite3_int64 i = 0;
  int rc;
  FUNC0(NotUsed);
  rc = FUNC1(0, &i);
  *prNow = i/86400000.0;
  return rc;
}