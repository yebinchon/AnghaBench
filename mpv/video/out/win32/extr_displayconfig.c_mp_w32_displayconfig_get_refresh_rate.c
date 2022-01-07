
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT32 ;
struct TYPE_9__ {scalar_t__ Denominator; scalar_t__ Numerator; } ;
struct TYPE_7__ {size_t modeInfoIdx; TYPE_3__ refreshRate; } ;
struct TYPE_8__ {TYPE_1__ targetInfo; } ;
typedef TYPE_2__ DISPLAYCONFIG_PATH_INFO ;
typedef int DISPLAYCONFIG_MODE_INFO ;


 size_t DISPLAYCONFIG_PATH_MODE_IDX_INVALID ;
 int displayconfig_load ;
 int displayconfig_load_ran ;
 int displayconfig_loaded ;
 scalar_t__ get_config (void*,int *,TYPE_2__**,int *,int **) ;
 TYPE_2__* get_path (int ,TYPE_2__*,int const*) ;
 double get_refresh_rate_from_mode (int *) ;
 scalar_t__ is_valid_refresh_rate (TYPE_3__) ;
 int pthread_once (int *,int ) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

double mp_w32_displayconfig_get_refresh_rate(const wchar_t *device)
{

    pthread_once(&displayconfig_load_ran, displayconfig_load);
    if (!displayconfig_loaded)
        return 0.0;

    void *ctx = talloc_new(((void*)0));
    double freq = 0.0;


    UINT32 num_paths;
    DISPLAYCONFIG_PATH_INFO* paths;
    UINT32 num_modes;
    DISPLAYCONFIG_MODE_INFO* modes;
    if (get_config(ctx, &num_paths, &paths, &num_modes, &modes))
        goto end;


    DISPLAYCONFIG_PATH_INFO* path;
    if (!(path = get_path(num_paths, paths, device)))
        goto end;



    if (path->targetInfo.modeInfoIdx != DISPLAYCONFIG_PATH_MODE_IDX_INVALID)
        freq = get_refresh_rate_from_mode(&modes[path->targetInfo.modeInfoIdx]);


    if (freq == 0.0 && is_valid_refresh_rate(path->targetInfo.refreshRate)) {
        freq = ((double)path->targetInfo.refreshRate.Numerator) /
               ((double)path->targetInfo.refreshRate.Denominator);
    }

end:
    talloc_free(ctx);
    return freq;
}
