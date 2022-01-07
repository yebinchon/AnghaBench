
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w; scalar_t__ v; scalar_t__ u; } ;
struct wined3d_shader_instruction {TYPE_1__ texel_offset; } ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL wined3d_shader_instruction_has_texel_offset(const struct wined3d_shader_instruction *ins)
{
    return ins->texel_offset.u || ins->texel_offset.v || ins->texel_offset.w;
}
