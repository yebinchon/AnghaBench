#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nk_rect {int /*<<< orphan*/  h; } ;
struct nk_image {int dummy; } ;
struct TYPE_5__ {float x; } ;
struct TYPE_6__ {TYPE_1__ spacing; } ;
struct TYPE_7__ {TYPE_2__ window; } ;
struct nk_context {TYPE_3__ style; } ;
struct TYPE_8__ {struct nk_image directory; struct nk_image computer; struct nk_image desktop; struct nk_image home; } ;
struct media {TYPE_4__ icons; } ;
struct file_browser {char* directory; char* home; char* desktop; size_t dir_count; size_t file_count; char** files; char* file; char** directories; struct media* media; } ;

/* Variables and functions */
 size_t MAX_PATH_LEN ; 
 int /*<<< orphan*/  NK_DYNAMIC ; 
 int /*<<< orphan*/  NK_TEXT_CENTERED ; 
#define  NK_UNDEFINED 128 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_NO_SCROLLBAR ; 
 int /*<<< orphan*/  FUNC0 (struct file_browser*,char*) ; 
 struct nk_image* FUNC1 (struct media*,char*) ; 
 scalar_t__ FUNC2 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct nk_context*,struct nk_image) ; 
 scalar_t__ FUNC4 (struct nk_context*,struct nk_image,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct nk_context*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC11 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int) ; 
 struct nk_rect FUNC15 (struct nk_context*) ; 
 size_t FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC18(struct file_browser *browser, struct nk_context *ctx)
{
    int ret = 0;
    struct media *media = browser->media;
    struct nk_rect total_space;

    if (FUNC2(ctx, "File Browser", FUNC14(50, 50, 800, 600),
        NK_WINDOW_BORDER|NK_WINDOW_NO_SCROLLBAR|NK_WINDOW_MOVABLE))
    {
        static float ratio[] = {0.25f, NK_UNDEFINED};
        float spacing_x = ctx->style.window.spacing.x;

        /* output path directory selector in the menubar */
        ctx->style.window.spacing.x = 0;
        FUNC12(ctx);
        {
            char *d = browser->directory;
            char *begin = d + 1;
            FUNC11(ctx, 25, 6);
            while (*d++) {
                if (*d == '/') {
                    *d = '\0';
                    if (FUNC5(ctx, begin)) {
                        *d++ = '/'; *d = '\0';
                        FUNC0(browser, browser->directory);
                        break;
                    }
                    *d = '/';
                    begin = d + 1;
                }
            }
        }
        FUNC13(ctx);
        ctx->style.window.spacing.x = spacing_x;

        /* window layout */
        total_space = FUNC15(ctx);
        FUNC10(ctx, NK_DYNAMIC, total_space.h, 2, ratio);
        FUNC7(ctx, "Special", NK_WINDOW_NO_SCROLLBAR);
        {
            struct nk_image home = media->icons.home;
            struct nk_image desktop = media->icons.desktop;
            struct nk_image computer = media->icons.computer;

            FUNC11(ctx, 40, 1);
            if (FUNC4(ctx, home, "home", NK_TEXT_CENTERED))
                FUNC0(browser, browser->home);
            if (FUNC4(ctx,desktop,"desktop",NK_TEXT_CENTERED))
                FUNC0(browser, browser->desktop);
            if (FUNC4(ctx,computer,"computer",NK_TEXT_CENTERED))
                FUNC0(browser, "/");
            FUNC8(ctx);
        }

        /* output directory content window */
        FUNC7(ctx, "Content", 0);
        {
            int index = -1;
            size_t i = 0, j = 0, k = 0;
            size_t rows = 0, cols = 0;
            size_t count = browser->dir_count + browser->file_count;

            cols = 4;
            rows = count / cols;
            for (i = 0; i <= rows; i += 1) {
                {size_t n = j + cols;
                FUNC11(ctx, 135, (int)cols);
                for (; j < count && j < n; ++j) {
                    /* draw one row of icons */
                    if (j < browser->dir_count) {
                        /* draw and execute directory buttons */
                        if (FUNC3(ctx,media->icons.directory))
                            index = (int)j;
                    } else {
                        /* draw and execute files buttons */
                        struct nk_image *icon;
                        size_t fileIndex = ((size_t)j - browser->dir_count);
                        icon = FUNC1(media,browser->files[fileIndex]);
                        if (FUNC3(ctx, *icon)) {
                            FUNC17(browser->file, browser->directory, MAX_PATH_LEN);
                            n = FUNC16(browser->file);
                            FUNC17(browser->file + n, browser->files[fileIndex], MAX_PATH_LEN - n);
                            ret = 1;
                        }
                    }
                }}
                {size_t n = k + cols;
                FUNC11(ctx, 20, (int)cols);
                for (; k < count && k < n; k++) {
                    /* draw one row of labels */
                    if (k < browser->dir_count) {
                        FUNC9(ctx, browser->directories[k], NK_TEXT_CENTERED);
                    } else {
                        size_t t = k-browser->dir_count;
                        FUNC9(ctx,browser->files[t],NK_TEXT_CENTERED);
                    }
                }}
            }

            if (index != -1) {
                size_t n = FUNC16(browser->directory);
                FUNC17(browser->directory + n, browser->directories[index], MAX_PATH_LEN - n);
                n = FUNC16(browser->directory);
                if (n < MAX_PATH_LEN - 1) {
                    browser->directory[n] = '/';
                    browser->directory[n+1] = '\0';
                }
                FUNC0(browser, browser->directory);
            }
            FUNC8(ctx);
        }
    }
    FUNC6(ctx);
    return ret;
}