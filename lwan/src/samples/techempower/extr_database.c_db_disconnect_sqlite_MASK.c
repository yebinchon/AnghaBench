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
struct db_sqlite {int /*<<< orphan*/  sqlite; } ;
struct db {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct db*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct db *db)
{
    struct db_sqlite *db_sqlite = (struct db_sqlite *)db;

    FUNC1(db_sqlite->sqlite);
    FUNC0(db);
}