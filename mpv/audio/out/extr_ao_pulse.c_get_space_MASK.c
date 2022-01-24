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
struct priv {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; } ;
struct ao {size_t sstride; struct priv* priv; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ao *ao)
{
    struct priv *priv = ao->priv;
    FUNC1(priv->mainloop);
    size_t space = FUNC0(priv->stream);
    FUNC2(priv->mainloop);
    return space / ao->sstride;
}