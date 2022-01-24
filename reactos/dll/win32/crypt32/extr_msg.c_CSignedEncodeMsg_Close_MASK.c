#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* info; } ;
struct TYPE_10__ {size_t cSignerInfo; struct TYPE_10__* rgSignerInfo; struct TYPE_10__* signerKeySpec; int /*<<< orphan*/  rgCrlEncoded; int /*<<< orphan*/  cCrlEncoded; int /*<<< orphan*/  rgCertEncoded; int /*<<< orphan*/  cCertEncoded; } ;
struct TYPE_8__ {TYPE_4__* pbData; } ;
struct TYPE_9__ {TYPE_6__ msg_data; TYPE_1__ data; TYPE_4__* innerOID; } ;
typedef  TYPE_2__* HCRYPTMSG ;
typedef  size_t DWORD ;
typedef  TYPE_2__ CSignedEncodeMsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(HCRYPTMSG hCryptMsg)
{
    CSignedEncodeMsg *msg = hCryptMsg;
    DWORD i;

    FUNC3(msg->innerOID);
    FUNC3(msg->data.pbData);
    FUNC0(msg->msg_data.info->cCertEncoded,
     msg->msg_data.info->rgCertEncoded);
    FUNC0(msg->msg_data.info->cCrlEncoded,
     msg->msg_data.info->rgCrlEncoded);
    for (i = 0; i < msg->msg_data.info->cSignerInfo; i++)
        FUNC2(&msg->msg_data.info->rgSignerInfo[i]);
    FUNC1(&msg->msg_data);
    FUNC3(msg->msg_data.info->signerKeySpec);
    FUNC3(msg->msg_data.info->rgSignerInfo);
    FUNC3(msg->msg_data.info);
}