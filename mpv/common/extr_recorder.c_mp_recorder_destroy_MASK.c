#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_recorder_sink {int dummy; } ;
struct mp_recorder {int num_streams; TYPE_1__* mux; struct mp_recorder_sink** streams; scalar_t__ opened; } ;
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_recorder*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_recorder*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_recorder_sink*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_recorder*) ; 

void FUNC7(struct mp_recorder *priv)
{
    if (priv->opened) {
        for (int n = 0; n < priv->num_streams; n++) {
            struct mp_recorder_sink *rst = priv->streams[n];
            FUNC5(rst, true);
        }

        if (FUNC1(priv->mux) < 0)
            FUNC0(priv, "Writing trailer failed.\n");
    }

    if (priv->mux) {
        if (FUNC3(&priv->mux->pb) < 0)
            FUNC0(priv, "Closing file failed\n");

        FUNC2(priv->mux);
    }

    FUNC4(priv);
    FUNC6(priv);
}