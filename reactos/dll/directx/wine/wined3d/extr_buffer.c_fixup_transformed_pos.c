
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vec4 {float w; float x; float y; float z; } ;



__attribute__((used)) static inline unsigned int fixup_transformed_pos(struct wined3d_vec4 *p)
{

    if (p->w != 1.0f && p->w != 0.0f)
    {
        float w = 1.0f / p->w;
        p->x *= w;
        p->y *= w;
        p->z *= w;
        p->w = w;
    }

    return sizeof(*p);
}
