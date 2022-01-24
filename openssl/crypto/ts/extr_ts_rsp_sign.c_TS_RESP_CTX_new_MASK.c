#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  extension_cb; int /*<<< orphan*/  time_cb; int /*<<< orphan*/  serial_cb; int /*<<< orphan*/  signer_md; } ;
typedef  TYPE_1__ TS_RESP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_NEW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  def_extension_cb ; 
 int /*<<< orphan*/  def_serial_cb ; 
 int /*<<< orphan*/  def_time_cb ; 

TS_RESP_CTX *FUNC3(void)
{
    TS_RESP_CTX *ctx;

    if ((ctx = FUNC1(sizeof(*ctx))) == NULL) {
        FUNC2(TS_F_TS_RESP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ctx->signer_md = FUNC0();

    ctx->serial_cb = def_serial_cb;
    ctx->time_cb = def_time_cb;
    ctx->extension_cb = def_extension_cb;

    return ctx;
}