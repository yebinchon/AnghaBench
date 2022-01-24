#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_dblib_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  err; int /*<<< orphan*/  link; } ;
typedef  TYPE_3__ pdo_dblib_db_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(pdo_stmt_t *stmt)
{
	pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
	pdo_dblib_db_handle *H = S->H;

	/* Cancel any pending results */
	FUNC0(H->link);

	FUNC1(&H->err);

	return 1;
}