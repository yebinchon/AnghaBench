#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sectorSize; int deviceCharacteristics; int ctrlFlags; } ;
typedef  TYPE_1__ unixFile ;
typedef  int /*<<< orphan*/  sqlite3_file ;

/* Variables and functions */
 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ; 
 int UNIXFILE_PSOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(sqlite3_file *id){
  unixFile *p = (unixFile*)id;
  int rc = 0;
#ifdef __QNXNTO__
  if( p->sectorSize==0 ) unixSectorSize(id);
  rc = p->deviceCharacteristics;
#endif
  if( p->ctrlFlags & UNIXFILE_PSOW ){
    rc |= SQLITE_IOCAP_POWERSAFE_OVERWRITE;
  }
  return rc;
}