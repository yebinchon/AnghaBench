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
struct vfs_dir {int dummy; } ;
typedef  int /*<<< orphan*/  sint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfs_dir const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static sint32_t FUNC3( const struct vfs_dir *dd ) {
  FUNC0(dd);

  sint32_t res = FUNC1( d );

  // free descriptor memory
  FUNC2( (void *)dd );
}