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
struct priv {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; int /*<<< orphan*/  stream; } ;
struct ao {struct priv* priv; } ;
typedef  double pa_usec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PA_ERR_NODATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC6(struct ao *ao)
{
    struct priv *priv = ao->priv;
    pa_usec_t latency = (pa_usec_t) -1;
    FUNC3(priv->mainloop);
    while (FUNC2(priv->stream, &latency, NULL) < 0) {
        if (FUNC1(priv->context) != PA_ERR_NODATA) {
            FUNC0("pa_stream_get_latency() failed");
            break;
        }
        /* Wait until latency data is available again */
        FUNC5(priv->mainloop);
    }
    FUNC4(priv->mainloop);
    return latency == (pa_usec_t) -1 ? 0 : latency / 1000000.0;
}