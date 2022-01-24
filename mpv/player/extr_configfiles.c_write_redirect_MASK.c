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
struct MPContext {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(struct MPContext *mpctx, char *path)
{
    char *conffile = FUNC3(mpctx, path);
    if (conffile) {
        FILE *file = FUNC1(conffile, "wb");
        if (file) {
            FUNC2(file, "# redirect entry\n");
            FUNC5(mpctx, file, path);
            FUNC0(file);
        }
        FUNC4(conffile);
    }
}