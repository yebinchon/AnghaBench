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
struct nk_color {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  brush; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nk_color) ; 
 TYPE_1__ gdip ; 

__attribute__((used)) static void
FUNC3(short x, short y, unsigned short w,
    unsigned short h, struct nk_color col)
{
    FUNC1(gdip.brush, FUNC2(col));
    FUNC0(gdip.memory, gdip.brush, x, y, w, h);
}