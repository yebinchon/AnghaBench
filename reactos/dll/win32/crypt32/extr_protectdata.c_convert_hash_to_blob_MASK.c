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
struct TYPE_3__ {int cbData; int /*<<< orphan*/ * pbData; } ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  int DWORD ;
typedef  TYPE_1__ DATA_BLOB ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HP_HASHSIZE ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOL FUNC5(HCRYPTHASH hHash, DATA_BLOB * blob)
{
    DWORD dwSize;

    FUNC4("called\n");

    if (!blob) return FALSE;

    dwSize=sizeof(DWORD);
    if (!FUNC0(hHash, HP_HASHSIZE, (BYTE*)&blob->cbData,
                           &dwSize, 0))
    {
        FUNC3("failed to get hash size\n");
        return FALSE;
    }

    if (!(blob->pbData=FUNC1(blob->cbData)))
    {
        FUNC3("failed to allocate blob memory\n");
        return FALSE;
    }

    dwSize=blob->cbData;
    if (!FUNC0(hHash, HP_HASHVAL, blob->pbData, &dwSize, 0))
    {
        FUNC3("failed to get hash value\n");
        FUNC2(blob->pbData);
        blob->pbData=NULL;
        blob->cbData=0;
        return FALSE;
    }

    return TRUE;
}