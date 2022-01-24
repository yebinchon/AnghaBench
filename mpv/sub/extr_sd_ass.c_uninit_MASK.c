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
struct sd_ass_priv {int /*<<< orphan*/  ass_library; int /*<<< orphan*/  shadow_track; int /*<<< orphan*/  ass_track; scalar_t__ converter; } ;
struct sd {struct sd_ass_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sd *sd)
{
    struct sd_ass_priv *ctx = sd->priv;

    if (ctx->converter)
        FUNC3(ctx->converter);
    FUNC0(ctx->ass_track);
    FUNC0(ctx->shadow_track);
    FUNC2(sd, false);
    FUNC1(ctx->ass_library);
}