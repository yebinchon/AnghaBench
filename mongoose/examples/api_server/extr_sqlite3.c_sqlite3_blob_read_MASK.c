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
typedef  int /*<<< orphan*/  sqlite3_blob ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlite3BtreeData ; 

int FUNC1(sqlite3_blob *pBlob, void *z, int n, int iOffset){
  return FUNC0(pBlob, z, n, iOffset, sqlite3BtreeData);
}