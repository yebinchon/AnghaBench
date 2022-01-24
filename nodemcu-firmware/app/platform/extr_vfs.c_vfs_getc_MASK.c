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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int VFS_EOF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,unsigned char*,int) ; 

int FUNC4( int fd )
{
  unsigned char c = 0xFF;
  int32_t res;

  if(!FUNC1( fd )) {
    if (1 != FUNC3( fd, &c, 1 )) {
      FUNC0("getc errno %i\n", FUNC2( fd ));
      return VFS_EOF;
    } else {
      return (int)c;
    }
  }
  return VFS_EOF;
}