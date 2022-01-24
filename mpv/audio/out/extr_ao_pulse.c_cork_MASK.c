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
struct priv {scalar_t__ retval; int /*<<< orphan*/  stream; int /*<<< orphan*/  mainloop; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  success_cb ; 
 int /*<<< orphan*/  FUNC3 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ao *ao, bool pause)
{
    struct priv *priv = ao->priv;
    FUNC2(priv->mainloop);
    priv->retval = 0;
    if (!FUNC3(priv, FUNC1(priv->stream, pause, success_cb, ao)) ||
        !priv->retval)
        FUNC0("pa_stream_cork() failed");
}