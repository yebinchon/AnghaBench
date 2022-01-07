
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_vertex_caps {int vertex_processing_caps; int fvf_caps; int raster_caps; int max_user_clip_planes; scalar_t__ max_vertex_blend_matrix_index; int max_vertex_blend_matrices; int max_active_lights; void* ffp_generic_attributes; void* xyzrhw; } ;
struct TYPE_2__ {int user_clip_distances; int blends; int lights; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_1__ limits; } ;


 void* FALSE ;
 size_t NV_FOG_DISTANCE ;
 int WINED3DFVFCAPS_PSIZE ;
 int WINED3DPRASTERCAPS_FOGRANGE ;
 int WINED3DVTXPCAPS_DIRECTIONALLIGHTS ;
 int WINED3DVTXPCAPS_LOCALVIEWER ;
 int WINED3DVTXPCAPS_MATERIALSOURCE7 ;
 int WINED3DVTXPCAPS_POSITIONALLIGHTS ;
 int WINED3DVTXPCAPS_TEXGEN ;
 int WINED3DVTXPCAPS_TEXGEN_SPHEREMAP ;
 int WINED3DVTXPCAPS_VERTEXFOG ;

__attribute__((used)) static void vp_ffp_get_caps(const struct wined3d_gl_info *gl_info, struct wined3d_vertex_caps *caps)
{
    caps->xyzrhw = FALSE;
    caps->ffp_generic_attributes = FALSE;
    caps->max_active_lights = gl_info->limits.lights;
    caps->max_vertex_blend_matrices = gl_info->limits.blends;
    caps->max_vertex_blend_matrix_index = 0;
    caps->vertex_processing_caps = WINED3DVTXPCAPS_DIRECTIONALLIGHTS
            | WINED3DVTXPCAPS_MATERIALSOURCE7
            | WINED3DVTXPCAPS_POSITIONALLIGHTS
            | WINED3DVTXPCAPS_LOCALVIEWER
            | WINED3DVTXPCAPS_VERTEXFOG
            | WINED3DVTXPCAPS_TEXGEN
            | WINED3DVTXPCAPS_TEXGEN_SPHEREMAP;
    caps->fvf_caps = WINED3DFVFCAPS_PSIZE | 0x0008;
    caps->max_user_clip_planes = gl_info->limits.user_clip_distances;
    caps->raster_caps = 0;
    if (gl_info->supported[NV_FOG_DISTANCE])
        caps->raster_caps |= WINED3DPRASTERCAPS_FOGRANGE;
}
