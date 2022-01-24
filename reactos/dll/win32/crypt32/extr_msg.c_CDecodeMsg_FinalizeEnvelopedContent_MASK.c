#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  content; TYPE_3__* data; } ;
struct TYPE_12__ {TYPE_4__ enveloped_data; } ;
struct TYPE_8__ {int open_flags; } ;
struct TYPE_13__ {TYPE_5__ u; int /*<<< orphan*/  detached_data; TYPE_1__ base; } ;
struct TYPE_9__ {int /*<<< orphan*/  encryptedContent; } ;
struct TYPE_10__ {TYPE_2__ encryptedContentInfo; } ;
typedef  int /*<<< orphan*/  CRYPT_DER_BLOB ;
typedef  int /*<<< orphan*/  CRYPT_DATA_BLOB ;
typedef  TYPE_6__ CDecodeMsg ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CMSG_DETACHED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC1(CDecodeMsg *msg,
 CRYPT_DER_BLOB *blob)
{
    CRYPT_DATA_BLOB *content;

    if (msg->base.open_flags & CMSG_DETACHED_FLAG)
        content = &msg->detached_data;
    else
        content =
         &msg->u.enveloped_data.data->encryptedContentInfo.encryptedContent;

    return FUNC0(&msg->u.enveloped_data.content, content);
}