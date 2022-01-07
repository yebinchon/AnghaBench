
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_device {TYPE_1__** cur_textures; } ;
struct TYPE_2__ {int gl_target; } ;
typedef size_t GLenum ;


 scalar_t__ GL_TEXTURE0 ;
 size_t GS_MAX_TEXTURES ;
 int gl_active_texture (scalar_t__) ;
 int gl_bind_texture (int ,int ) ;

__attribute__((used)) static void clear_textures(struct gs_device *device)
{
 GLenum i;
 for (i = 0; i < GS_MAX_TEXTURES; i++) {
  if (device->cur_textures[i]) {
   gl_active_texture(GL_TEXTURE0 + i);
   gl_bind_texture(device->cur_textures[i]->gl_target, 0);
   device->cur_textures[i] = ((void*)0);
  }
 }
}
