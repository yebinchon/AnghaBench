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
struct ao {int sstride; struct priv* priv; } ;
typedef  int /*<<< orphan*/  pa_operation ;

/* Variables and functions */
 int AOPLAY_FINAL_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PA_SEEK_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    FUNC4(priv->mainloop);
    if (FUNC3(priv->stream, data[0], samples * ao->sstride, NULL, 0,
                        PA_SEEK_RELATIVE) < 0) {
        FUNC0("pa_stream_write() failed");
        samples = -1;
    }
    if (flags & AOPLAY_FINAL_CHUNK) {
        // Force start in case the stream was too short for prebuf
        pa_operation *op = FUNC2(priv->stream, NULL, NULL);
        FUNC1(op);
    }
    FUNC5(priv->mainloop);
    return samples;
}