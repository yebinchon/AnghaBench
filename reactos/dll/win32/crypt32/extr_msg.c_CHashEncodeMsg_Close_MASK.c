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
struct TYPE_7__ {int open_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  pbData; } ;
struct TYPE_8__ {int /*<<< orphan*/  prov; TYPE_2__ base; int /*<<< orphan*/  hash; TYPE_1__ data; } ;
typedef  TYPE_3__* HCRYPTMSG ;
typedef  TYPE_3__ CHashEncodeMsg ;

/* Variables and functions */
 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HCRYPTMSG hCryptMsg)
{
    CHashEncodeMsg *msg = hCryptMsg;

    FUNC1(msg->data.pbData);
    FUNC0(msg->hash);
    if (msg->base.open_flags & CMSG_CRYPT_RELEASE_CONTEXT_FLAG)
        FUNC2(msg->prov, 0);
}