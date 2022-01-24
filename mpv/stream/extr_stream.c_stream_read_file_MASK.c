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
struct mpv_global {int dummy; } ;
struct bstr {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct mpv_global*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,struct mpv_global*) ; 
 struct bstr FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct bstr FUNC5(const char *filename, void *talloc_ctx,
                             struct mpv_global *global, int max_size)
{
    struct bstr res = {0};
    char *fname = FUNC1(NULL, global, filename);
    stream_t *s = FUNC2(fname, global);
    if (s) {
        res = FUNC3(s, talloc_ctx, max_size);
        FUNC0(s);
    }
    FUNC4(fname);
    return res;
}