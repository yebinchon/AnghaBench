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
struct priv {int /*<<< orphan*/  mainloop; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  pa_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
#define  PA_STREAM_FAILED 130 
#define  PA_STREAM_READY 129 
#define  PA_STREAM_TERMINATED 128 
 int /*<<< orphan*/  FUNC1 (struct ao*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(pa_stream *s, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    switch (FUNC2(s)) {
    case PA_STREAM_FAILED:
        FUNC0(ao, "Stream failed.\n");
        FUNC1(ao);
        FUNC3(priv->mainloop, 0);
        break;
    case PA_STREAM_READY:
    case PA_STREAM_TERMINATED:
        FUNC3(priv->mainloop, 0);
        break;
    }
}