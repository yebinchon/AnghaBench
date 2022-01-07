
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ space; scalar_t__ levels; scalar_t__ gamma; scalar_t__ primaries; int sig_peak; scalar_t__ light; } ;
struct mp_image_params {scalar_t__ chroma_location; TYPE_1__ color; int h; int w; } ;
typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 scalar_t__ MP_CHROMA_AUTO ;
 scalar_t__ MP_CHROMA_CENTER ;
 scalar_t__ MP_CHROMA_LEFT ;
 int MP_CSP_AUTO ;
 scalar_t__ MP_CSP_BT_2020_C ;
 scalar_t__ MP_CSP_BT_2020_NC ;
 scalar_t__ MP_CSP_BT_601 ;
 scalar_t__ MP_CSP_BT_709 ;
 scalar_t__ MP_CSP_LEVELS_AUTO ;
 scalar_t__ MP_CSP_LEVELS_PC ;
 scalar_t__ MP_CSP_LEVELS_TV ;
 scalar_t__ MP_CSP_LIGHT_AUTO ;
 scalar_t__ MP_CSP_LIGHT_DISPLAY ;
 scalar_t__ MP_CSP_LIGHT_SCENE_HLG ;
 scalar_t__ MP_CSP_PRIM_AUTO ;
 void* MP_CSP_PRIM_BT_2020 ;
 void* MP_CSP_PRIM_BT_709 ;
 int MP_CSP_RGB ;
 scalar_t__ MP_CSP_SMPTE_240M ;
 scalar_t__ MP_CSP_TRC_AUTO ;
 scalar_t__ MP_CSP_TRC_BT_1886 ;
 scalar_t__ MP_CSP_TRC_HLG ;
 scalar_t__ MP_CSP_TRC_LINEAR ;
 scalar_t__ MP_CSP_TRC_SRGB ;
 scalar_t__ MP_CSP_TRC_V_LOG ;
 int MP_CSP_XYZ ;
 scalar_t__ MP_CSP_YCGCO ;
 int MP_REF_WHITE ;
 int mp_csp_guess_colorspace (int ,int ) ;
 scalar_t__ mp_csp_guess_primaries (int ,int ) ;
 int mp_image_params_get_forced_csp (struct mp_image_params*) ;
 int mp_trc_is_hdr (scalar_t__) ;
 int mp_trc_nom_peak (scalar_t__) ;

void mp_image_params_guess_csp(struct mp_image_params *params)
{
    enum mp_csp forced_csp = mp_image_params_get_forced_csp(params);
    if (forced_csp == MP_CSP_AUTO) {
        if (params->color.space != MP_CSP_BT_601 &&
            params->color.space != MP_CSP_BT_709 &&
            params->color.space != MP_CSP_BT_2020_NC &&
            params->color.space != MP_CSP_BT_2020_C &&
            params->color.space != MP_CSP_SMPTE_240M &&
            params->color.space != MP_CSP_YCGCO)
        {


            params->color.space = MP_CSP_AUTO;
        }
        if (params->color.space == MP_CSP_AUTO)
            params->color.space = mp_csp_guess_colorspace(params->w, params->h);
        if (params->color.levels == MP_CSP_LEVELS_AUTO) {
            if (params->color.gamma == MP_CSP_TRC_V_LOG) {
                params->color.levels = MP_CSP_LEVELS_PC;
            } else {
                params->color.levels = MP_CSP_LEVELS_TV;
            }
        }
        if (params->color.primaries == MP_CSP_PRIM_AUTO) {

            if (params->color.space == MP_CSP_BT_2020_NC ||
                params->color.space == MP_CSP_BT_2020_C) {
                params->color.primaries = MP_CSP_PRIM_BT_2020;
            } else if (params->color.space == MP_CSP_BT_709) {
                params->color.primaries = MP_CSP_PRIM_BT_709;
            } else {

                params->color.primaries = mp_csp_guess_primaries(params->w, params->h);
            }
        }
        if (params->color.gamma == MP_CSP_TRC_AUTO)
            params->color.gamma = MP_CSP_TRC_BT_1886;
    } else if (forced_csp == MP_CSP_RGB) {
        params->color.space = MP_CSP_RGB;
        params->color.levels = MP_CSP_LEVELS_PC;






        if (params->color.primaries == MP_CSP_PRIM_AUTO)
            params->color.primaries = MP_CSP_PRIM_BT_709;
        if (params->color.gamma == MP_CSP_TRC_AUTO)
            params->color.gamma = MP_CSP_TRC_SRGB;
    } else if (forced_csp == MP_CSP_XYZ) {
        params->color.space = MP_CSP_XYZ;
        params->color.levels = MP_CSP_LEVELS_PC;
        if (params->color.primaries == MP_CSP_PRIM_AUTO)
            params->color.primaries = MP_CSP_PRIM_BT_2020;
        if (params->color.gamma == MP_CSP_TRC_AUTO)
            params->color.gamma = MP_CSP_TRC_LINEAR;
    } else {

        params->color.space = MP_CSP_AUTO;
        params->color.levels = MP_CSP_LEVELS_AUTO;
        params->color.primaries = MP_CSP_PRIM_AUTO;
        params->color.gamma = MP_CSP_TRC_AUTO;
    }

    if (!params->color.sig_peak) {
        if (params->color.gamma == MP_CSP_TRC_HLG) {
            params->color.sig_peak = 1000 / MP_REF_WHITE;
        } else {


            params->color.sig_peak = mp_trc_nom_peak(params->color.gamma);
        }
    }

    if (!mp_trc_is_hdr(params->color.gamma)) {


        params->color.sig_peak = 1.0;
    }

    if (params->chroma_location == MP_CHROMA_AUTO) {
        if (params->color.levels == MP_CSP_LEVELS_TV)
            params->chroma_location = MP_CHROMA_LEFT;
        if (params->color.levels == MP_CSP_LEVELS_PC)
            params->chroma_location = MP_CHROMA_CENTER;
    }

    if (params->color.light == MP_CSP_LIGHT_AUTO) {


        if (params->color.gamma == MP_CSP_TRC_HLG) {
            params->color.light = MP_CSP_LIGHT_SCENE_HLG;
        } else {
            params->color.light = MP_CSP_LIGHT_DISPLAY;
        }
    }
}
