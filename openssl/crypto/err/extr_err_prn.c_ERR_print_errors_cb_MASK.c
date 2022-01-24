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
typedef  int /*<<< orphan*/  tid ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char const*,char const*,char const*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ERR_TXT_STRING ; 
 unsigned long FUNC2 (char const**,int*,char const**,char const**,int*) ; 
 char* FUNC3 (unsigned long) ; 
 char* FUNC4 (unsigned long) ; 
 char* FUNC5 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 

void FUNC8(int (*cb) (const char *str, size_t len, void *u),
                         void *u)
{
    CRYPTO_THREAD_ID tid = FUNC1();
    unsigned long l;
    char buf[4096], *hex;
    const char *lib, *reason;
    const char *file, *data, *func;
    int line, flags;

    while ((l = FUNC2(&file, &line, &func, &data, &flags)) != 0) {
        lib = FUNC3(l);
        reason = FUNC4(l);
        if (func == NULL)
            func = "unknown function";
        if ((flags & ERR_TXT_STRING) == 0)
            data = "";
        hex = FUNC5((const unsigned char *)&tid, sizeof(tid));
        FUNC0(buf, sizeof(buf), "%s:error:%s:%s:%s:%s:%d:%s\n",
                     hex, lib, func, reason, file, line, data);
        FUNC6(hex);
        if (cb(buf, FUNC7(buf), u) <= 0)
            break;              /* abort outputting the error report */
    }
}