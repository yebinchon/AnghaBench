
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fbo_info {int dummy; } ;
typedef int gs_texture_t ;


 struct fbo_info* get_fbo (int *,int ,int ) ;
 int get_tex_dimensions (int *,int *,int *) ;

__attribute__((used)) static inline struct fbo_info *get_fbo_by_tex(gs_texture_t *tex)
{
 uint32_t width, height;
 if (!get_tex_dimensions(tex, &width, &height))
  return ((void*)0);

 return get_fbo(tex, width, height);
}
