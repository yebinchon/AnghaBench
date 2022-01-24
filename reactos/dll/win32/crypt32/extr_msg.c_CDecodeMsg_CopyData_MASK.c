#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cbData; scalar_t__ pbData; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CRYPT_DATA_BLOB ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC3(CRYPT_DATA_BLOB *blob, const BYTE *pbData,
 DWORD cbData)
{
    BOOL ret = TRUE;

    if (cbData)
    {
        if (blob->cbData)
            blob->pbData = FUNC1(blob->pbData,
             blob->cbData + cbData);
        else
            blob->pbData = FUNC0(cbData);
        if (blob->pbData)
        {
            FUNC2(blob->pbData + blob->cbData, pbData, cbData);
            blob->cbData += cbData;
        }
        else
            ret = FALSE;
    }
    return ret;
}