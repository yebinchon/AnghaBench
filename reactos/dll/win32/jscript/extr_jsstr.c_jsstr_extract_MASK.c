#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {unsigned int buf; } ;
struct TYPE_3__ {unsigned int buf; } ;

/* Variables and functions */
#define  JSSTR_HEAP 130 
#define  JSSTR_INLINE 129 
#define  JSSTR_ROPE 128 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

void FUNC6(jsstr_t *str, unsigned off, unsigned len, WCHAR *buf)
{
    switch(FUNC4(str)) {
    case JSSTR_INLINE:
        FUNC5(buf, FUNC1(str)->buf+off, len*sizeof(WCHAR));
        return;
    case JSSTR_HEAP:
        FUNC5(buf, FUNC0(str)->buf+off, len*sizeof(WCHAR));
        return;
    case JSSTR_ROPE:
        FUNC3(FUNC2(str), off, len, buf);
        return;
    }
}