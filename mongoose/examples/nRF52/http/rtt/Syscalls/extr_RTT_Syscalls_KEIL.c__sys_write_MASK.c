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
typedef  scalar_t__ FILEHANDLE ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 scalar_t__ STDOUT ; 

int FUNC1(FILEHANDLE hFile, const unsigned char * pBuffer, unsigned NumBytes, int Mode) {
  int r = 0;

  if (hFile == STDOUT) {
    return NumBytes - FUNC0(0, (const char*)pBuffer, NumBytes);
  }
  return r;
}