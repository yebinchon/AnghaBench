#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  phys_size; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int erase_cnt ; 
 TYPE_2__ fs ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4( void )
{
  FUNC2(&fs);
  FUNC3(TRUE);
  FUNC2(&fs);

  FUNC0("Formatting: size 0x%x, addr 0x%x\n", fs.cfg.phys_size, fs.cfg.phys_addr);
  erase_cnt = 0;
  int status = FUNC1(&fs);
  erase_cnt = -1;

  return status < 0 ? 0 : FUNC3(FALSE);
}