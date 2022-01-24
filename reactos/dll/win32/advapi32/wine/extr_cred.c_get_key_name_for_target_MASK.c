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
typedef  int /*<<< orphan*/  wszGenericPrefix ;
typedef  int /*<<< orphan*/  wszDomPasswdPrefix ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ CRED_TYPE_GENERIC ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static LPWSTR FUNC4(LPCWSTR target_name, DWORD type)
{
    static const WCHAR wszGenericPrefix[] = {'G','e','n','e','r','i','c',':',' ',0};
    static const WCHAR wszDomPasswdPrefix[] = {'D','o','m','P','a','s','s','w','d',':',' ',0};
    INT len;
    LPCWSTR prefix = NULL;
    LPWSTR key_name, p;

    len = FUNC3(target_name);
    if (type == CRED_TYPE_GENERIC)
    {
        prefix = wszGenericPrefix;
        len += sizeof(wszGenericPrefix)/sizeof(wszGenericPrefix[0]);
    }
    else
    {
        prefix = wszDomPasswdPrefix;
        len += sizeof(wszDomPasswdPrefix)/sizeof(wszDomPasswdPrefix[0]);
    }

    key_name = FUNC0(len * sizeof(WCHAR));
    if (!key_name) return NULL;

    FUNC2(key_name, prefix);
    FUNC1(key_name, target_name);

    for (p = key_name; *p; p++)
        if (*p == '\\') *p = '_';

    return key_name;
}