#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  prepare; int /*<<< orphan*/  disconnect; } ;
struct db_mysql {int /*<<< orphan*/  con; TYPE_1__ base; } ;
struct db {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  db_disconnect_mysql ; 
 int /*<<< orphan*/  db_prepare_mysql ; 
 int /*<<< orphan*/  FUNC0 (struct db_mysql*) ; 
 struct db_mysql* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

struct db *FUNC6(const char *host, const char *user, const char *pass,
        const char *database)
{
    struct db_mysql *db_mysql = FUNC1(sizeof(*db_mysql));

    if (!db_mysql)
        return NULL;

    db_mysql->con = FUNC3(NULL);
    if (!db_mysql->con) {
        FUNC0(db_mysql);
        return NULL;
    }

    if (!FUNC4(db_mysql->con, host, user, pass, database, 0, NULL, 0))
        goto error;

    if (FUNC5(db_mysql->con, "utf8"))
        goto error;

    db_mysql->base.disconnect = db_disconnect_mysql;
    db_mysql->base.prepare = db_prepare_mysql;

    return (struct db *)db_mysql;

error:
    FUNC2(db_mysql->con);
    FUNC0(db_mysql);
    return NULL;
}