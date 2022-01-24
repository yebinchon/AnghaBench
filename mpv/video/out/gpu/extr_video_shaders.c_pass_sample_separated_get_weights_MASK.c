#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scaler {TYPE_1__* kernel; int /*<<< orphan*/  lut_size; int /*<<< orphan*/  lut; } ;
struct gl_shader_cache {int dummy; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_cache*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gl_shader_cache *sc,
                                              struct scaler *scaler)
{
    FUNC1(sc, "lut", scaler->lut);
    FUNC0("float ypos = LUT_POS(fcoord, %d.0);\n", scaler->lut_size);

    int N = scaler->kernel->size;
    int width = (N + 3) / 4; // round up

    FUNC0("float weights[%d];\n", N);
    for (int i = 0; i < N; i++) {
        if (i % 4 == 0)
            FUNC0("c = texture(lut, vec2(%f, ypos));\n", (i / 4 + 0.5) / width);
        FUNC0("weights[%d] = c[%d];\n", i, i % 4);
    }
}