#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * d3d9_dll; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    d3d_priv *priv = vo->priv;

    FUNC1(priv, "uninit called.\n");

    FUNC2(priv);
    FUNC3(vo);
    if (priv->d3d9_dll)
        FUNC0(priv->d3d9_dll);
    priv->d3d9_dll = NULL;
}