
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
struct TYPE_9__ {int time; } ;
struct TYPE_8__ {int dwLowDateTime; int dwHighDateTime; } ;
typedef int LONGLONG ;
typedef int HRESULT ;
typedef TYPE_1__ FILETIME ;
typedef TYPE_2__ DateInstance ;



 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int FileTimeToLocalFileTime (TYPE_1__*,TYPE_1__*) ;
 int GetSystemTimeAsFileTime (TYPE_1__*) ;

 int NO_HINT ;
 int S_OK ;
 int TIME_EPOCH ;
 int TRACE (char*) ;
 int create_date (int *,int *,double,int **) ;
 TYPE_2__* date_from_jsdisp (int *) ;
 double date_now () ;
 int date_parse (int ,double*) ;
 int date_to_string (int,int ,int ,int *) ;
 int date_utc (int *,unsigned int,int *,double*) ;
 int get_string (int ) ;
 int is_string (int ) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 double time_clip (double) ;
 int to_number (int *,int ,double*) ;
 int to_primitive (int *,int ,int *,int ) ;
 int utc (int ,TYPE_2__*) ;

__attribute__((used)) static HRESULT DateConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *date;
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 129:
        switch(argc) {

        case 0:
            hres = create_date(ctx, ((void*)0), date_now(), &date);
            if(FAILED(hres))
                return hres;
            break;


        case 1: {
            jsval_t prim;
            double n;

            hres = to_primitive(ctx, argv[0], &prim, NO_HINT);
            if(FAILED(hres))
                return hres;

            if(is_string(prim))
                hres = date_parse(get_string(prim), &n);
            else
                hres = to_number(ctx, prim, &n);

            jsval_release(prim);
            if(FAILED(hres))
                return hres;

            hres = create_date(ctx, ((void*)0), time_clip(n), &date);
            if(FAILED(hres))
                return hres;
            break;
        }


        default: {
            double ret_date;
            DateInstance *di;

            hres = date_utc(ctx, argc, argv, &ret_date);
            if(FAILED(hres))
                return hres;

            hres = create_date(ctx, ((void*)0), ret_date, &date);
            if(FAILED(hres))
                return hres;

            di = date_from_jsdisp(date);
            di->time = utc(di->time, di);
        }
        }

        *r = jsval_obj(date);
        return S_OK;

    case 128: {
        FILETIME system_time, local_time;
        LONGLONG lltime;

        GetSystemTimeAsFileTime(&system_time);
        FileTimeToLocalFileTime(&system_time, &local_time);
        lltime = ((LONGLONG)local_time.dwHighDateTime<<32)
            + local_time.dwLowDateTime;

        return date_to_string(lltime/10000-TIME_EPOCH, FALSE, 0, r);
    }

    default:
        FIXME("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
