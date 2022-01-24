#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; } ;
typedef  int /*<<< orphan*/  CRYPT_DER_BLOB ;
typedef  TYPE_1__ CDecodeMsg ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
#define  CMSG_ENVELOPED 130 
#define  CMSG_HASHED 129 
#define  CMSG_SIGNED 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC3(CDecodeMsg *msg, CRYPT_DER_BLOB *blob)
{
    BOOL ret = FALSE;

    switch (msg->type)
    {
    case CMSG_HASHED:
        ret = FUNC1(msg, blob);
        break;
    case CMSG_ENVELOPED:
        ret = FUNC0(msg, blob);
        break;
    case CMSG_SIGNED:
        ret = FUNC2(msg, blob);
        break;
    default:
        ret = TRUE;
    }
    return ret;
}