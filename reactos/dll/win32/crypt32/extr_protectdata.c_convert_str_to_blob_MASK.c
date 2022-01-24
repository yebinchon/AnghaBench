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
struct TYPE_3__ {int /*<<< orphan*/ * pbData; scalar_t__ cbData; } ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_1__ DATA_BLOB ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
BYTE *FUNC3(LPCSTR str, DATA_BLOB *blob)
{
    if (!str || !blob) return NULL;

    blob->cbData=FUNC2(str)+1;
    if (!(blob->pbData=FUNC0(blob->cbData)))
    {
        blob->cbData=0;
    }
    else {
        FUNC1((LPSTR)blob->pbData, str);
    }

    return blob->pbData;
}