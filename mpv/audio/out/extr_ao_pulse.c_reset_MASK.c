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
 int /*<<< orphan*/  FUNC1 (struct ao*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  success_cb ; 
 int /*<<< orphan*/  FUNC4 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ao *ao)
{
    // pa_stream_flush() works badly if not corked
    FUNC1(ao, true);
    struct priv *priv = ao->priv;
    FUNC3(priv->mainloop);
    priv->retval = 0;
    if (!FUNC4(priv, FUNC2(priv->stream, success_cb, ao)) ||
        !priv->retval)
        FUNC0("pa_stream_flush() failed");
    FUNC1(ao, false);
}