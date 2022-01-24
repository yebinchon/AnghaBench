#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  cpu_count; int /*<<< orphan*/  cpu; } ;
typedef  TYPE_1__ kd_stc_64 ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef  TYPE_2__ kd_packet_t ;
struct TYPE_10__ {int syncd; int seq_id; int /*<<< orphan*/  cpu_count; scalar_t__ pae; int /*<<< orphan*/ * tlist_cache; int /*<<< orphan*/ * plist_cache; int /*<<< orphan*/ * target; int /*<<< orphan*/  cpu; int /*<<< orphan*/  io_ptr; } ;
typedef  TYPE_3__ WindCtx ;

/* Variables and functions */
 int KD_E_OK ; 
 int /*<<< orphan*/  KD_PACKET_TYPE_RESET ; 
 int /*<<< orphan*/  KD_PACKET_TYPE_STATE_CHANGE64 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__**) ; 

int FUNC6(WindCtx *ctx) {
	int ret;
	kd_packet_t *s;

	if (!ctx || !ctx->io_ptr) {
		return 0;
	}

	if (ctx->syncd) {
		return 1;
	}

	// Send the breakin packet
	if (FUNC2 (ctx->io_ptr, (const uint8_t *) "b", 1) != 1) {
		return 0;
	}

	// Reset the host
	ret = FUNC3 (ctx->io_ptr, KD_PACKET_TYPE_RESET, 0);
	if (ret != KD_E_OK) {
		return 0;
	}

	// Wait for the response
	ret = FUNC5 (ctx, KD_PACKET_TYPE_RESET, NULL);
	if (ret != KD_E_OK) {
		return 0;
	}

	// Syncronize with the first KD_PACKET_TYPE_STATE_CHANGE64 packet
	FUNC5 (ctx, KD_PACKET_TYPE_STATE_CHANGE64, &s);

	// Reset the sequence id
	ctx->seq_id = 0x80800001;

	kd_stc_64 *stc64 = (kd_stc_64*)s->data;
	ctx->cpu = stc64->cpu;
	ctx->cpu_count = stc64->cpu_count;
	ctx->target = NULL;
	FUNC4 (ctx->plist_cache);
	ctx->plist_cache = NULL;
	FUNC4 (ctx->tlist_cache);
	ctx->tlist_cache = NULL;
	ctx->pae = 0;
	// We're ready to go
	ctx->syncd = 1;

	FUNC1 (s);
	FUNC0 ("Sync done! (%i cpus found)\n", ctx->cpu_count);
	return 1;
}