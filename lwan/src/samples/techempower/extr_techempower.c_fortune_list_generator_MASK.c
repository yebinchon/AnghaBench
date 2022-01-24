#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t elements; scalar_t__ base; } ;
struct fortune_array {TYPE_2__ base; } ;
struct db_stmt {int dummy; } ;
struct TYPE_4__ {char* s; int /*<<< orphan*/  i; } ;
struct db_row {char kind; int buffer_length; TYPE_1__ u; } ;
struct coro {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  message; int /*<<< orphan*/  id; } ;
struct Fortune {TYPE_3__ item; } ;
typedef  int /*<<< orphan*/  fortune_query ;
typedef  int /*<<< orphan*/  fortune_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct coro*,struct fortune_array*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct coro*,int) ; 
 int /*<<< orphan*/  database ; 
 struct db_stmt* FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct db_stmt*) ; 
 scalar_t__ FUNC5 (struct db_stmt*,struct db_row*) ; 
 int /*<<< orphan*/  FUNC6 (struct fortune_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct fortune_array*) ; 
 int /*<<< orphan*/  FUNC8 (struct fortune_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fortune_compare ; 

__attribute__((used)) static int FUNC9(struct coro *coro, void *data)
{
    static const char fortune_query[] = "SELECT * FROM Fortune";
    char fortune_buffer[256];
    struct Fortune *fortune = data;
    struct fortune_array fortunes;
    struct db_stmt *stmt;
    size_t i;

    stmt = FUNC3(database, fortune_query, sizeof(fortune_query) - 1);
    if (FUNC0(!stmt))
        return 0;

    FUNC6(&fortunes);

    struct db_row results[] = {
        { .kind = 'i' },
        { .kind = 's', .u.s = fortune_buffer, .buffer_length = sizeof(fortune_buffer) },
        { .kind = '\0' }
    };
    while (FUNC5(stmt, results)) {
        if (!FUNC1(coro, &fortunes, results[0].u.i, results[1].u.s))
            goto out;
    }

    if (!FUNC1(coro, &fortunes, 0,
                            "Additional fortune added at request time."))
        goto out;

    FUNC8(&fortunes, fortune_compare);

    for (i = 0; i < fortunes.base.elements; i++) {
        struct Fortune *f = &((struct Fortune *)fortunes.base.base)[i];
        fortune->item.id = f->item.id;
        fortune->item.message = f->item.message;
        FUNC2(coro, 1);
    }

out:
    FUNC7(&fortunes);
    FUNC4(stmt);
    return 0;
}