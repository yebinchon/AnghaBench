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
struct TYPE_4__ {int /*<<< orphan*/ * pbData; scalar_t__ cbData; int /*<<< orphan*/  cUnusedBits; } ;
typedef  TYPE_1__ CRYPT_BIT_BLOB ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC2(CRYPT_BIT_BLOB *out, const CRYPT_BIT_BLOB *in)
{
    out->cbData = in->cbData;
    out->cUnusedBits = in->cUnusedBits;
    if (out->cbData)
    {
        out->pbData = FUNC0(out->cbData);
        if (out->pbData)
            FUNC1(out->pbData, in->pbData, out->cbData);
        else
            return FALSE;
    }
    else
        out->pbData = NULL;
    return TRUE;
}