#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CMSG_INDEFINITE_LENGTH ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2(const BYTE *pbEncoded, DWORD cbEncoded, DWORD *len)
{
    BOOL ret;

    if ((ret = FUNC0(pbEncoded, cbEncoded, len)) &&
     *len == CMSG_INDEFINITE_LENGTH)
    {
        FUNC1(CRYPT_E_ASN1_CORRUPT);
        ret = FALSE;
    }
    return ret;
}