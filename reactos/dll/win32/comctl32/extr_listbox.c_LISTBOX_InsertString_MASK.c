#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_6__ {int nb_items; int /*<<< orphan*/  self; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  const* LPCWSTR ;
typedef  TYPE_1__ LB_DESCR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LBN_ERRSPACE ; 
 int LB_ERRSPACE ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static LRESULT FUNC10( LB_DESCR *descr, INT index, LPCWSTR str )
{
    LPWSTR new_str = NULL;
    LRESULT ret;

    if (FUNC1(descr))
    {
        static const WCHAR empty_stringW[] = { 0 };
        if (!str) str = empty_stringW;
        if (!(new_str = FUNC2( FUNC0(), 0, (FUNC9(str) + 1) * sizeof(WCHAR) )))
        {
            FUNC5( descr, LBN_ERRSPACE );
            return LB_ERRSPACE;
        }
        FUNC8(new_str, str);
    }

    if (index == -1) index = descr->nb_items;
    if ((ret = FUNC4( descr, index, new_str, (ULONG_PTR)str )) != 0)
    {
        FUNC3( FUNC0(), 0, new_str );
        return ret;
    }

    FUNC6("[%p]: added item %d %s\n",
          descr->self, index, FUNC1(descr) ? FUNC7(new_str) : "" );
    return index;
}