#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct detail_data {TYPE_1__* pCertViewInfo; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * (* prop_to_value ) (int /*<<< orphan*/ *,size_t) ;scalar_t__ prop_is_string; int /*<<< orphan*/  prop; } ;
struct TYPE_4__ {int /*<<< orphan*/  pCertContext; } ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct detail_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* prop_id_map ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC7(HWND hwnd, struct detail_data *data)
{
    DWORD i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;

    for (i = 0; i < FUNC0(prop_id_map); i++)
    {
        DWORD cb;

        if (FUNC1(cert, prop_id_map[i].prop, NULL,
         &cb))
        {
            BYTE *pb;
            WCHAR *val = NULL;

            /* FIXME: MS adds a separate value for the signature hash
             * algorithm.
             */
            pb = FUNC3(FUNC2(), 0, cb);
            if (pb)
            {
                if (FUNC1(cert,
                 prop_id_map[i].prop, pb, &cb))
                {
                    if (prop_id_map[i].prop_is_string)
                    {
                        val = (LPWSTR)pb;
                        /* Don't double-free pb */
                        pb = NULL;
                    }
                    else
                        val = prop_id_map[i].prop_to_value(pb, cb);
                }
                FUNC4(FUNC2(), 0, pb);
            }
            FUNC5(hwnd, data, prop_id_map[i].id, val,
             NULL, NULL);
        }
    }
}