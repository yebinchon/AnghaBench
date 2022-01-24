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
struct ustring {unsigned char* Buffer; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  unsigned char* LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ustring*,struct ustring*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wszPasswordValue ; 

__attribute__((used)) static DWORD FUNC5(HKEY hkey, LPCWSTR target_name, DWORD type,
                                   const BYTE key_data[KEY_SIZE],
                                   const BYTE *credential_blob, DWORD credential_blob_size)
{
    LPBYTE encrypted_credential_blob;
    struct ustring data;
    struct ustring key;
    DWORD ret;

    key.Length = key.MaximumLength = KEY_SIZE;
    key.Buffer = (unsigned char *)key_data;

    encrypted_credential_blob = FUNC2(credential_blob_size);
    if (!encrypted_credential_blob) return ERROR_OUTOFMEMORY;

    FUNC4(encrypted_credential_blob, credential_blob, credential_blob_size);
    data.Length = data.MaximumLength = credential_blob_size;
    data.Buffer = encrypted_credential_blob;
    FUNC1(&data, &key);

    ret = FUNC0(hkey, wszPasswordValue, 0, REG_BINARY, encrypted_credential_blob, credential_blob_size);
    FUNC3(encrypted_credential_blob);

    return ret;
}