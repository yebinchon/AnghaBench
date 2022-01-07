
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_vec3 {int z; int y; int x; } ;
struct wined3d_matrix {int dummy; } ;
struct TYPE_4__ {float member_1; float member_2; float member_3; float member_4; float member_6; float member_7; float member_8; float member_9; float member_11; float member_15; int member_14; int member_13; int member_12; int member_10; int member_5; int member_0; } ;
struct d3d_device {TYPE_1__ legacy_clipspace; int wined3d_device; int legacy_projection; } ;
typedef TYPE_1__ D3DMATRIX ;


 int WINED3D_TS_PROJECTION ;
 int multiply_matrix (TYPE_1__*,TYPE_1__*,int *) ;
 int wined3d_device_set_transform (int ,int ,struct wined3d_matrix*) ;

__attribute__((used)) static void update_clip_space(struct d3d_device *device,
        struct wined3d_vec3 *scale, struct wined3d_vec3 *offset)
{
    D3DMATRIX clip_space =
    {
        scale->x, 0.0f, 0.0f, 0.0f,
        0.0f, scale->y, 0.0f, 0.0f,
        0.0f, 0.0f, scale->z, 0.0f,
        offset->x, offset->y, offset->z, 1.0f,
    };
    D3DMATRIX projection;

    multiply_matrix(&projection, &clip_space, &device->legacy_projection);
    wined3d_device_set_transform(device->wined3d_device,
            WINED3D_TS_PROJECTION, (struct wined3d_matrix *)&projection);
    device->legacy_clipspace = clip_space;
}
