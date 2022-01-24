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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  void* PCERT_EXTENSION ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int CRYPT_FORMAT_STR_MULTI_LINE ; 
 int CRYPT_FORMAT_STR_NO_HEX ; 
 int /*<<< orphan*/ * FUNC0 (void*,int) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 

__attribute__((used)) static WCHAR *FUNC2(PCCERT_CONTEXT cert, void *param)
{
    PCERT_EXTENSION ext = param;
    LPWSTR str = FUNC0(ext,
     CRYPT_FORMAT_STR_MULTI_LINE | CRYPT_FORMAT_STR_NO_HEX);

    if (!str)
        str = FUNC1(ext);
    return str;
}