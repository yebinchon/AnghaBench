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
struct nk_context {int dummy; } ;
struct media {TYPE_1__* font_18; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int /*<<< orphan*/  FUNC0 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nk_context*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nk_context *ctx, struct media *media, const char *title)
{
    FUNC2(ctx, &media->font_18->handle);
    FUNC1(ctx, 20, 1);
    FUNC0(ctx, title, NK_TEXT_LEFT);
}