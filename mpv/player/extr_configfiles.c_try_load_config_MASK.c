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
struct MPContext {int /*<<< orphan*/  mconfig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct MPContext *mpctx, const char *file, int flags,
                           int msgl)
{
    if (!FUNC2(file))
        return 0;
    FUNC0(mpctx, msgl, "Loading config '%s'\n", file);
    FUNC1(mpctx->mconfig, file, NULL, flags);
    return 1;
}