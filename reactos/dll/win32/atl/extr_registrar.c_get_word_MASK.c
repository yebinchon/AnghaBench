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
struct TYPE_4__ {char* str; scalar_t__ len; } ;
typedef  TYPE_1__ strbuf ;
typedef  char* LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static HRESULT FUNC4(LPCOLESTR *str, strbuf *buf)
{
    LPCOLESTR iter, iter2 = *str;

    buf->len = 0;
    buf->str[0] = '\0';

    while(FUNC1(*iter2))
        iter2++;
    iter = iter2;
    if(!*iter) {
        *str = iter;
        return S_OK;
    }

    if(*iter == '}' || *iter == '=') {
        FUNC2(iter++, buf, 1);
    }else if(*iter == '\'') {
        iter2 = ++iter;
        iter = FUNC3(iter, '\'');
        if(!iter) {
            FUNC0("Unexpected end of script\n");
            *str = iter;
            return DISP_E_EXCEPTION;
        }
        FUNC2(iter2, buf, iter-iter2);
        iter++;
    }else {
        while(*iter && !FUNC1(*iter))
            iter++;
        FUNC2(iter2, buf, iter-iter2);
    }

    while(FUNC1(*iter))
        iter++;
    *str = iter;
    return S_OK;
}