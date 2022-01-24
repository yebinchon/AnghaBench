#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* entry; } ;
typedef  TYPE_2__ _lsapi_activate_user_ini_ctx ;
struct TYPE_3__ {int /*<<< orphan*/  user_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_ini_filename ; 

__attribute__((used)) static void FUNC2(char* begin,
                                        char* end,
                                        void* data)
{
    _lsapi_activate_user_ini_ctx *ctx = data;
    char tmp = end[0];
    end[0] = 0;
    FUNC1(begin, FUNC0(user_ini_filename), &ctx->entry->user_config);
    end[0] = tmp;
}