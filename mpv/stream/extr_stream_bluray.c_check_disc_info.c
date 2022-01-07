
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bluray_priv_s {int bd; } ;
struct TYPE_6__ {struct bluray_priv_s* priv; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int bdplus_handled; int libbdplus_detected; scalar_t__ bdplus_detected; int aacs_error_code; int aacs_handled; int libaacs_detected; scalar_t__ aacs_detected; int bluray_detected; } ;
typedef TYPE_2__ BLURAY_DISC_INFO ;


 int MP_ERR (TYPE_1__*,char*,...) ;
 int aacs_strerr (int ) ;
 TYPE_2__* bd_get_disc_info (int ) ;

__attribute__((used)) static bool check_disc_info(stream_t *s)
{
    struct bluray_priv_s *b = s->priv;
    const BLURAY_DISC_INFO *info = bd_get_disc_info(b->bd);


    if (!info->bluray_detected) {
        MP_ERR(s, "Given stream is not a Blu-ray.\n");
        return 0;
    }


    if (info->aacs_detected) {
        if (!info->libaacs_detected) {
            MP_ERR(s, "AACS encryption detected but cannot find libaacs.\n");
            return 0;
        }
        if (!info->aacs_handled) {
            MP_ERR(s, "AACS error: %s\n", aacs_strerr(info->aacs_error_code));
            return 0;
        }
    }


    if (info->bdplus_detected) {
        if (!info->libbdplus_detected) {
            MP_ERR(s, "BD+ encryption detected but cannot find libbdplus.\n");
            return 0;
        }
        if (!info->bdplus_handled) {
            MP_ERR(s, "Cannot decrypt BD+ encryption.\n");
            return 0;
        }
    }

    return 1;
}
