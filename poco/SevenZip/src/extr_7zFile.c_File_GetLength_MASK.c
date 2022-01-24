#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WRes ;
typedef  int UInt64 ;
struct TYPE_3__ {int /*<<< orphan*/  file; int /*<<< orphan*/  handle; } ;
typedef  int DWORD ;
typedef  TYPE_1__ CSzFile ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 () ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

WRes FUNC4(CSzFile *p, UInt64 *length)
{
  #ifdef USE_WINDOWS_FILE
  
  DWORD sizeHigh;
  DWORD sizeLow = GetFileSize(p->handle, &sizeHigh);
  if (sizeLow == 0xFFFFFFFF)
  {
    DWORD res = GetLastError();
    if (res != NO_ERROR)
      return res;
  }
  *length = (((UInt64)sizeHigh) << 32) + sizeLow;
  return 0;
  
  #else
  
  long pos = FUNC3(p->file);
  int res = FUNC2(p->file, 0, SEEK_END);
  *length = FUNC3(p->file);
  FUNC2(p->file, pos, SEEK_SET);
  return res;
  
  #endif
}