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
struct subfn {int dummy; } ;
struct mpv_global {int dummy; } ;
struct MPOpts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_global*,struct MPOpts*,struct subfn**,int*,int /*<<< orphan*/ ,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,struct mpv_global*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,struct mpv_global*,char*) ; 
 char* FUNC5 (struct subfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct mpv_global *global, struct MPOpts *opts,
                       struct subfn **slist, int *nsubs, const char *fname,
                       char **paths, char *cfg_path, int type)
{
    for (int i = 0; paths && paths[i]; i++) {
        char *expanded_path = FUNC4(NULL, global, paths[i]);
        char *path = FUNC5(
            *slist, FUNC2(fname),
            FUNC1(expanded_path ? expanded_path : paths[i]));
        FUNC0(global, opts, slist, nsubs, FUNC1(path),
                             fname, 0, type);
        FUNC6(expanded_path);
    }

    // Load subtitles in ~/.mpv/sub (or similar) limiting sub fuzziness
    char *mp_subdir = FUNC3(NULL, global, cfg_path);
    if (mp_subdir) {
        FUNC0(global, opts, slist, nsubs, FUNC1(mp_subdir),
                             fname, 1, type);
    }
    FUNC6(mp_subdir);
}