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
struct TYPE_4__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_1__ CRYPT_DATA_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(CRYPT_DATA_BLOB *out,
 const CRYPT_DATA_BLOB *in, LPBYTE *nextData)
{
    out->cbData = in->cbData;
    if (in->cbData)
    {
        out->pbData = *nextData;
        FUNC0(out->pbData, in->pbData, in->cbData);
        *nextData += in->cbData;
    }
}