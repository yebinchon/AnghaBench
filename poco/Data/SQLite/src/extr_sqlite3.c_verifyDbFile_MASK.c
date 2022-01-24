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
struct TYPE_4__ {int ctrlFlags; int /*<<< orphan*/  zPath; int /*<<< orphan*/  h; } ;
typedef  TYPE_1__ unixFile ;
struct stat {int st_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_WARNING ; 
 int UNIXFILE_NOLOCK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unixFile *pFile){
  struct stat buf;
  int rc;

  /* These verifications occurs for the main database only */
  if( pFile->ctrlFlags & UNIXFILE_NOLOCK ) return;

  rc = FUNC1(pFile->h, &buf);
  if( rc!=0 ){
    FUNC2(SQLITE_WARNING, "cannot fstat db file %s", pFile->zPath);
    return;
  }
  if( buf.st_nlink==0 ){
    FUNC2(SQLITE_WARNING, "file unlinked while open: %s", pFile->zPath);
    return;
  }
  if( buf.st_nlink>1 ){
    FUNC2(SQLITE_WARNING, "multiple links to file: %s", pFile->zPath);
    return;
  }
  if( FUNC0(pFile) ){
    FUNC2(SQLITE_WARNING, "file renamed while open: %s", pFile->zPath);
    return;
  }
}