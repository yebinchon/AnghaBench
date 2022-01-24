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
typedef  int /*<<< orphan*/  uint8 ;
struct bitmap {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 

void
FUNC2(uint8 opcode, int x, int y, int cx, int cy,
          void * src, int srcx, int srcy)
{
  struct bitmap* b;

  b = (struct bitmap*)src;
  FUNC0(opcode, x, y, cx, cy, b->data, b->width, b->height,
            srcx, srcy);
  FUNC1(x, y, cx, cy);
}