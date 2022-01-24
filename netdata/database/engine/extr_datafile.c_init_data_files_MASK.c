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
struct rrdengine_instance {int last_fileno; int /*<<< orphan*/  dbfiles_path; } ;

/* Variables and functions */
 int FUNC0 (struct rrdengine_instance*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rrdengine_instance*) ; 

int FUNC4(struct rrdengine_instance *ctx)
{
    int ret;

    ret = FUNC3(ctx);
    if (ret < 0) {
        FUNC1("Failed to scan path \"%s\".", ctx->dbfiles_path);
        return ret;
    } else if (0 == ret) {
        FUNC2("Data files not found, creating in path \"%s\".", ctx->dbfiles_path);
        ret = FUNC0(ctx, 1, 1);
        if (ret) {
            FUNC1("Failed to create data and journal files in path \"%s\".", ctx->dbfiles_path);
            return ret;
        }
        ctx->last_fileno = 1;
    }

    return 0;
}