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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int MAXULONG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  REG_OPTION_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static
BOOL
FUNC10(LPCWSTR RegistryKey,
                                LPCWSTR SubKey,
                                LPCWSTR ValueNameStr,
                                LPCWSTR lpBuffer)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    UNICODE_STRING ValueName;
    HANDLE KeyHandle, SubKeyHandle;
    SIZE_T StringLength;
    ULONG Disposition;
    NTSTATUS Status;

    StringLength = FUNC9(lpBuffer);
    if (StringLength > ((MAXULONG / sizeof(WCHAR)) - 1))
    {
        return FALSE;
    }

    FUNC8(&KeyName, RegistryKey);
    FUNC1(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);

    Status = FUNC6(&KeyHandle,
                       KEY_WRITE,
                       &ObjectAttributes);
    if (!FUNC2(Status))
    {
        FUNC0(Status);
        return FALSE;
    }

    FUNC8(&KeyName, SubKey);
    FUNC1(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               KeyHandle,
                               NULL);

    Status = FUNC4(&SubKeyHandle,
                         KEY_WRITE,
                         &ObjectAttributes,
                         0,
                         NULL,
                         REG_OPTION_VOLATILE,
                         &Disposition);
    if (!FUNC2(Status))
    {
        FUNC3(KeyHandle);
        FUNC0(Status);
        return FALSE;
    }

    FUNC8(&ValueName, ValueNameStr);

    Status = FUNC7(SubKeyHandle,
                           &ValueName,
                           0,
                           REG_SZ,
                           (PVOID)lpBuffer,
                           (StringLength + 1) * sizeof(WCHAR));
    if (!FUNC2(Status))
    {
        FUNC3(SubKeyHandle);
        FUNC3(KeyHandle);
        FUNC0(Status);
        return FALSE;
    }

    FUNC5(SubKeyHandle);
    FUNC3(SubKeyHandle);
    FUNC3(KeyHandle);

    return TRUE;
}