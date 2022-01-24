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
struct m_property {int dummy; } ;
struct MPOpts {char* record_file; } ;
struct MPContext {struct MPOpts* opts; } ;

/* Variables and functions */
 int M_PROPERTY_ERROR ; 
 int M_PROPERTY_OK ; 
 int M_PROPERTY_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct MPContext*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    struct MPOpts *opts = mpctx->opts;
    if (action == M_PROPERTY_SET) {
        char *new = *(char **)arg;
        if (!FUNC1(FUNC0(new), FUNC0(opts->record_file))) {
            FUNC4(opts->record_file);
            opts->record_file = FUNC5(NULL, new);
            FUNC3(mpctx, false);
            // open_recorder() unsets it on failure.
            if (new && !opts->record_file)
                return M_PROPERTY_ERROR;
        }
        return M_PROPERTY_OK;
    }
    return FUNC2(mpctx, prop, action, arg);
}