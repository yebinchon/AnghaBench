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
struct db_stmt {int dummy; } ;
struct TYPE_2__ {int i; } ;
struct db_row {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct db_stmt*,struct db_row*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct db_stmt*,struct db_row*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 () ; 

__attribute__((used)) static JsonNode *
FUNC7(struct db_stmt *stmt, struct db_row rows[], struct db_row results[])
{
    JsonNode *object = NULL;
    int id = FUNC6() % 10000;

    rows[0].u.i = id;

    if (FUNC0(!FUNC1(stmt, rows, 1)))
        goto out;

    if (FUNC0(!FUNC2(stmt, results)))
        goto out;

    object = FUNC5();
    if (FUNC0(!object))
        goto out;

    FUNC3(object, "id", FUNC4(id));
    FUNC3(object, "randomNumber", FUNC4(results[0].u.i));

out:
    return object;
}