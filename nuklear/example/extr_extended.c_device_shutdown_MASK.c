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
struct device {int /*<<< orphan*/  cmds; int /*<<< orphan*/  ebo; int /*<<< orphan*/  vbo; int /*<<< orphan*/  font_tex; int /*<<< orphan*/  prog; int /*<<< orphan*/  frag_shdr; int /*<<< orphan*/  vert_shdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct device *dev)
{
    FUNC4(dev->prog, dev->vert_shdr);
    FUNC4(dev->prog, dev->frag_shdr);
    FUNC2(dev->vert_shdr);
    FUNC2(dev->frag_shdr);
    FUNC1(dev->prog);
    FUNC3(1, &dev->font_tex);
    FUNC0(1, &dev->vbo);
    FUNC0(1, &dev->ebo);
    FUNC5(&dev->cmds);
}