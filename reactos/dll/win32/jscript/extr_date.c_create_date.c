
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int date_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_12__ {int dispex; int daylightBias; int daylightDate; int standardBias; int standardDate; int bias; int time; } ;
struct TYPE_11__ {int DaylightBias; int DaylightDate; int StandardBias; int StandardDate; int Bias; } ;
typedef TYPE_2__ TIME_ZONE_INFORMATION ;
typedef int HRESULT ;
typedef TYPE_3__ DateInstance ;
typedef int DOUBLE ;


 int DateInst_info ;
 int Date_info ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetTimeZoneInformation (TYPE_2__*) ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;
 int heap_free (TYPE_3__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT create_date(script_ctx_t *ctx, jsdisp_t *object_prototype, DOUBLE time, jsdisp_t **ret)
{
    DateInstance *date;
    HRESULT hres;
    TIME_ZONE_INFORMATION tzi;

    GetTimeZoneInformation(&tzi);

    date = heap_alloc_zero(sizeof(DateInstance));
    if(!date)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&date->dispex, ctx, &Date_info, object_prototype);
    else
        hres = init_dispex_from_constr(&date->dispex, ctx, &DateInst_info, ctx->date_constr);
    if(FAILED(hres)) {
        heap_free(date);
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
