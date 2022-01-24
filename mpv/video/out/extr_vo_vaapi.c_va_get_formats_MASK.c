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
struct va_image_formats {int num; TYPE_1__* entries; } ;
struct priv {struct va_image_formats* image_formats; int /*<<< orphan*/  display; } ;
typedef  int /*<<< orphan*/  VAStatus ;
struct TYPE_3__ {int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,char*,int) ; 
 int /*<<< orphan*/  VAImageFormat ; 
 struct va_image_formats* formats ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct va_image_formats*,int /*<<< orphan*/ ,int) ; 
 struct va_image_formats* FUNC4 (struct priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC7(struct priv *ctx)
{
    struct va_image_formats *formats = FUNC4(ctx, formats);
    formats->num = FUNC5(ctx->display);
    formats->entries = FUNC3(formats, VAImageFormat, formats->num);
    VAStatus status = FUNC6(ctx->display, formats->entries,
                                          &formats->num);
    if (!FUNC0(ctx, "vaQueryImageFormats()"))
        return;
    FUNC1(ctx, "%d image formats available:\n", formats->num);
    for (int i = 0; i < formats->num; i++)
        FUNC1(ctx, "  %s\n", FUNC2(formats->entries[i].fourcc));
    ctx->image_formats = formats;
}