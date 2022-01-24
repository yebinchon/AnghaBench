#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  date_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_12__ {int /*<<< orphan*/  dispex; int /*<<< orphan*/  daylightBias; int /*<<< orphan*/  daylightDate; int /*<<< orphan*/  standardBias; int /*<<< orphan*/  standardDate; int /*<<< orphan*/  bias; int /*<<< orphan*/  time; } ;
struct TYPE_11__ {int /*<<< orphan*/  DaylightBias; int /*<<< orphan*/  DaylightDate; int /*<<< orphan*/  StandardBias; int /*<<< orphan*/  StandardDate; int /*<<< orphan*/  Bias; } ;
typedef  TYPE_2__ TIME_ZONE_INFORMATION ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DateInstance ;
typedef  int /*<<< orphan*/  DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  DateInst_info ; 
 int /*<<< orphan*/  Date_info ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(script_ctx_t *ctx, jsdisp_t *object_prototype, DOUBLE time, jsdisp_t **ret)
{
    DateInstance *date;
    HRESULT hres;
    TIME_ZONE_INFORMATION tzi;

    FUNC1(&tzi);

    date = FUNC2(sizeof(DateInstance));
    if(!date)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = FUNC4(&date->dispex, ctx, &Date_info, object_prototype);
    else
        hres = FUNC5(&date->dispex, ctx, &DateInst_info, ctx->date_constr);
    if(FUNC0(hres)) {
        FUNC3(date);
        return hres;
    }

    date->time = time;
    date->bias = tzi.Bias;
    date->standardDate = tzi.StandardDate;
    date->standardBias = tzi.StandardBias;
    date->daylightDate = tzi.DaylightDate;
    date->daylightBias = tzi.DaylightBias;

    *ret = &date->dispex;
    return S_OK;
}