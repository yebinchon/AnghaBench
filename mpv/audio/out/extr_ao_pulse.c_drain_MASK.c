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
struct priv {scalar_t__ stream; int /*<<< orphan*/  mainloop; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  success_cb ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (priv->stream) {
        FUNC1(priv->mainloop);
        FUNC2(priv, FUNC0(priv->stream, success_cb, ao));
    }
}