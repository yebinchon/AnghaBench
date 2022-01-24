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
struct vfs_vol {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {void* ldrname; } ;

/* Variables and functions */
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_vol const*) ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_RES_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ last_result ; 
 TYPE_1__* myvol ; 

__attribute__((used)) static int32_t FUNC3( const struct vfs_vol *vol )
{
  FUNC0(vol);

  last_result = FUNC1( NULL, myvol->ldrname, 0 );

  FUNC2( myvol->ldrname );
  FUNC2( (void *)vol );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}