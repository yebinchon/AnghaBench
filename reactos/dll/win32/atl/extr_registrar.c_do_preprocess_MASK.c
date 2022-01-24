#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ strbuf ;
struct TYPE_8__ {int key_len; char const* item; int /*<<< orphan*/  key; struct TYPE_8__* next; } ;
typedef  TYPE_2__ rep_list ;
typedef  char WCHAR ;
struct TYPE_9__ {TYPE_2__* rep; } ;
typedef  TYPE_3__ Registrar ;
typedef  char const* LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,TYPE_1__*,int) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static HRESULT FUNC7(const Registrar *This, LPCOLESTR data, strbuf *buf)
{
    LPCOLESTR iter, iter2 = data;
    rep_list *rep_iter;
    static const WCHAR wstr[] = {'%',0};

    iter = FUNC6(data, '%');
    while(iter) {
        FUNC5(iter2, buf, iter-iter2);

        iter2 = ++iter;
        if(!*iter2)
            return DISP_E_EXCEPTION;
        iter = FUNC6(iter2, '%');
        if(!iter)
            return DISP_E_EXCEPTION;

        if(iter == iter2) {
            FUNC5(wstr, buf, 1);
        }else {
            for(rep_iter = This->rep; rep_iter; rep_iter = rep_iter->next) {
                if(rep_iter->key_len == iter-iter2
                        && !FUNC2(iter2, rep_iter->key, rep_iter->key_len))
                    break;
            }
            if(!rep_iter) {
                FUNC1("Could not find replacement: %s\n", FUNC4(iter2, iter-iter2));
                return DISP_E_EXCEPTION;
            }

            FUNC5(rep_iter->item, buf, -1);
        }

        iter2 = ++iter;
        iter = FUNC6(iter, '%');
    }

    FUNC5(iter2, buf, -1);
    FUNC0("%s\n", FUNC3(buf->str));

    return S_OK;
}