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
struct TYPE_4__ {int cbData; int /*<<< orphan*/ * pbData; } ;
typedef  int DWORD ;
typedef  TYPE_1__ CRYPT_DATA_BLOB ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_STRING_BASE64_ANY ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 

__attribute__((used)) static BOOL FUNC3( const CRYPT_DATA_BLOB *in, CRYPT_DATA_BLOB *out )
{
    BOOL ret;
    DWORD len = in->cbData;

    while (len && !in->pbData[len - 1]) len--;
    if (!FUNC2( (char *)in->pbData, len, CRYPT_STRING_BASE64_ANY,
                               NULL, &out->cbData, NULL, NULL )) return FALSE;

    if (!(out->pbData = FUNC0( out->cbData ))) return FALSE;
    ret = FUNC2( (char *)in->pbData, len, CRYPT_STRING_BASE64_ANY,
                                out->pbData, &out->cbData, NULL, NULL );
    if (!ret) FUNC1( out->pbData );
    return ret;
}