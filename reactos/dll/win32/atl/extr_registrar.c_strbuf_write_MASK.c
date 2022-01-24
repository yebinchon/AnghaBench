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
struct TYPE_3__ {int len; int alloc; char* str; } ;
typedef  TYPE_1__ strbuf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  LPCOLESTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(LPCOLESTR str, strbuf *buf, int len)
{
    if(len == -1)
        len = FUNC2(str);
    if(buf->len+len+1 >= buf->alloc) {
        buf->alloc = (buf->len+len)<<1;
        buf->str = FUNC1(FUNC0(), 0, buf->str, buf->alloc*sizeof(WCHAR));
    }
    FUNC3(buf->str+buf->len, str, len*sizeof(OLECHAR));
    buf->len += len;
    buf->str[buf->len] = '\0';
}