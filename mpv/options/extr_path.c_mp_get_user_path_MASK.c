#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type ;
struct mpv_global {int dummy; } ;
struct TYPE_11__ {char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct mpv_global*,char*,char const*,char*) ; 
 TYPE_1__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (void*,struct mpv_global*,char const*) ; 
 char* FUNC8 (void*,struct mpv_global*,char*) ; 
 char* FUNC9 (void*,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (void*,char const*) ; 

char *FUNC14(void *talloc_ctx, struct mpv_global *global,
                       const char *path)
{
    if (!path)
        return NULL;
    char *res = NULL;
    bstr bpath = FUNC2(path);
    if (FUNC3(&bpath, "~")) {
        // parse to "~" <prefix> "/" <rest>
        bstr prefix, rest;
        if (FUNC5(bpath, "/", &prefix, &rest)) {
            const char *rest0 = rest.start; // ok in this case
            if (FUNC4(prefix, "~")) {
                res = FUNC7(talloc_ctx, global, rest0);
                if (!res) {
                    void *tmp = FUNC12(NULL);
                    const char *p = FUNC8(tmp, global, "home");
                    res = FUNC9(talloc_ctx, FUNC2(p), rest);
                    FUNC11(tmp);
                }
            } else if (FUNC4(prefix, "")) {
                char *home = FUNC6("HOME");
                if (!home)
                    home = FUNC6("USERPROFILE");
                res = FUNC9(talloc_ctx, FUNC2(home), rest);
            } else if (FUNC3(&prefix, "~")) {
                void *tmp = FUNC12(NULL);
                char type[80];
                FUNC10(type, sizeof(type), "%.*s", FUNC0(prefix));
                const char *p = FUNC8(tmp, global, type);
                res = FUNC9(talloc_ctx, FUNC2(p), rest);
                FUNC11(tmp);
            }
        }
    }
    if (!res)
        res = FUNC13(talloc_ctx, path);
    FUNC1(global, "user path: '%s' -> '%s'\n", path, res);
    return res;
}