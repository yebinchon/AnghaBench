
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kms {TYPE_1__* connector; int log; } ;
struct drm_mode_spec {int type; int refresh; int height; int width; int idx; } ;
struct TYPE_2__ {scalar_t__ count_modes; } ;






 int MP_ERR (struct kms*,char*) ;
 int MP_INFO (struct kms*,char*) ;
 int kms_show_available_modes (int ,TYPE_1__*) ;
 int parse_mode_spec (char const*,struct drm_mode_spec*) ;
 int setup_mode_by_idx (struct kms*,int ) ;
 int setup_mode_by_numbers (struct kms*,int ,int ,int ,char const*) ;
 int setup_mode_highest (struct kms*) ;
 int setup_mode_preferred (struct kms*) ;

__attribute__((used)) static bool setup_mode(struct kms *kms, const char *mode_spec)
{
    if (kms->connector->count_modes <= 0) {
        MP_ERR(kms, "No available modes\n");
        return 0;
    }

    struct drm_mode_spec parsed;
    if (!parse_mode_spec(mode_spec, &parsed)) {
        MP_ERR(kms, "Parse error\n");
        goto err;
    }

    switch (parsed.type) {
    case 131:
        if (!setup_mode_by_idx(kms, parsed.idx))
            goto err;
        break;
    case 130:
        if (!setup_mode_by_numbers(kms, parsed.width, parsed.height, parsed.refresh,
                                   mode_spec))
            goto err;
        break;
    case 128:
        if (!setup_mode_preferred(kms))
            goto err;
        break;
    case 129:
        if (!setup_mode_highest(kms))
            goto err;
        break;
    default:
        MP_ERR(kms, "setup_mode: Internal error\n");
        goto err;
    }

    return 1;

err:
    MP_INFO(kms, "Available modes:\n");
    kms_show_available_modes(kms->log, kms->connector);
    return 0;
}
