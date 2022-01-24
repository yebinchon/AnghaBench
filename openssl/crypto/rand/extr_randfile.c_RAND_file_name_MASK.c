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
typedef  char WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 char* DEFAULT_HOME ; 
 int FUNC0 (char*,char*,int) ; 
 char* RFILE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 

const char *FUNC7(char *buf, size_t size)
{
    char *s = NULL;
    size_t len;
    int use_randfile = 1;

#if defined(_WIN32) && defined(CP_UTF8) && !defined(_WIN32_WCE)
    DWORD envlen;
    WCHAR *var;

    /* Look up various environment variables. */
    if ((envlen = GetEnvironmentVariableW(var = L"RANDFILE", NULL, 0)) == 0) {
        use_randfile = 0;
        if ((envlen = GetEnvironmentVariableW(var = L"HOME", NULL, 0)) == 0
                && (envlen = GetEnvironmentVariableW(var = L"USERPROFILE",
                                                  NULL, 0)) == 0)
            envlen = GetEnvironmentVariableW(var = L"SYSTEMROOT", NULL, 0);
    }

    /* If we got a value, allocate space to hold it and then get it. */
    if (envlen != 0) {
        int sz;
        WCHAR *val = _alloca(envlen * sizeof(WCHAR));

        if (GetEnvironmentVariableW(var, val, envlen) < envlen
                && (sz = WideCharToMultiByte(CP_UTF8, 0, val, -1, NULL, 0,
                                             NULL, NULL)) != 0) {
            s = _alloca(sz);
            if (WideCharToMultiByte(CP_UTF8, 0, val, -1, s, sz,
                                    NULL, NULL) == 0)
                s = NULL;
        }
    }
#else
    if ((s = FUNC3("RANDFILE")) == NULL || *s == '\0') {
        use_randfile = 0;
        s = FUNC3("HOME");
    }
#endif

#ifdef DEFAULT_HOME
    if (!use_randfile && s == NULL)
        s = DEFAULT_HOME;
#endif
    if (s == NULL || *s == '\0')
        return NULL;

    len = FUNC6(s);
    if (use_randfile) {
        if (len + 1 >= size)
            return NULL;
        FUNC5(buf, s);
    } else {
        if (len + 1 + FUNC6(RFILE) + 1 >= size)
            return NULL;
        FUNC5(buf, s);
#ifndef OPENSSL_SYS_VMS
        FUNC4(buf, "/");
#endif
        FUNC4(buf, RFILE);
    }

    return buf;
}