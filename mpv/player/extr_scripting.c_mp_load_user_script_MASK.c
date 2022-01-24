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
struct MPContext {int /*<<< orphan*/  global; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct MPContext *mpctx, const char *fname)
{
    char *path = FUNC0(NULL, mpctx->global, fname);
    int ret = FUNC1(mpctx, path);
    FUNC2(path);
    return ret;
}