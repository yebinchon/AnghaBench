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
struct db_stmt_sqlite {int /*<<< orphan*/  sqlite; } ;
struct db_stmt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct db_stmt_sqlite*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct db_stmt *stmt)
{
    struct db_stmt_sqlite *stmt_sqlite = (struct db_stmt_sqlite *)stmt;

    FUNC1(stmt_sqlite->sqlite);
    FUNC0(stmt_sqlite);
}