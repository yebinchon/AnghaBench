#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ enum_func_status ;
struct TYPE_17__ {TYPE_2__* payload_decoder_factory; } ;
struct TYPE_16__ {int /*<<< orphan*/  skip_parsing; int /*<<< orphan*/ * memory_pool; } ;
struct TYPE_15__ {TYPE_3__* data; } ;
struct TYPE_14__ {unsigned int param_count; int /*<<< orphan*/  stmt_id; TYPE_6__* conn; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* init_result_field_packet ) (TYPE_5__*) ;} ;
struct TYPE_13__ {TYPE_1__ m; } ;
typedef  TYPE_3__ MYSQLND_STMT_DATA ;
typedef  TYPE_4__ MYSQLND_STMT ;
typedef  TYPE_5__ MYSQLND_PACKET_RES_FIELD ;
typedef  int /*<<< orphan*/  MYSQLND_MEMORY_POOL ;
typedef  TYPE_6__ MYSQLND_CONN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  mempool_default_size ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static enum_func_status
FUNC9(MYSQLND_STMT * s)
{
	MYSQLND_STMT_DATA * stmt = s? s->data : NULL;
	MYSQLND_CONN_DATA * conn = stmt? stmt->conn : NULL;
	/* Follows parameter metadata, we have just to skip it, as libmysql does */
	unsigned int i = 0;
	enum_func_status ret = FAIL;
	MYSQLND_PACKET_RES_FIELD field_packet;
	MYSQLND_MEMORY_POOL * pool;

	FUNC0("mysqlnd_stmt_skip_metadata");
	if (!stmt || !conn) {
		FUNC2(FAIL);
	}
	pool = FUNC6(FUNC3(mempool_default_size));
	if (!pool) {
		FUNC2(FAIL);
	}
	FUNC1("stmt=%lu", stmt->stmt_id);

	conn->payload_decoder_factory->m.init_result_field_packet(&field_packet);
	field_packet.memory_pool = pool;

	ret = PASS;
	field_packet.skip_parsing = TRUE;
	for (;i < stmt->param_count; i++) {
		if (FAIL == FUNC5(conn, &field_packet)) {
			ret = FAIL;
			break;
		}
	}
	FUNC4(&field_packet);
	FUNC7(pool);

	FUNC2(ret);
}