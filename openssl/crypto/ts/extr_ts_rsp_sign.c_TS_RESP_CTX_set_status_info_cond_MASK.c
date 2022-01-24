#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* response; } ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__* status_info; } ;
typedef  TYPE_2__ TS_STATUS_INFO ;
typedef  TYPE_3__ TS_RESP_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int,char const*) ; 
 scalar_t__ TS_STATUS_GRANTED ; 

int FUNC2(TS_RESP_CTX *ctx,
                                     int status, const char *text)
{
    int ret = 1;
    TS_STATUS_INFO *si = ctx->response->status_info;

    if (FUNC0(si->status) == TS_STATUS_GRANTED) {
        ret = FUNC1(ctx, status, text);
    }
    return ret;
}