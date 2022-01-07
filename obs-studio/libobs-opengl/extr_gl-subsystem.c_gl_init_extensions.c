
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_device {int copy_type; } ;


 int COPY_TYPE_ARB ;
 int COPY_TYPE_FBO_BLIT ;
 int COPY_TYPE_NV ;
 scalar_t__ GLAD_GL_ARB_copy_image ;
 scalar_t__ GLAD_GL_NV_copy_image ;
 int GLAD_GL_VERSION_3_3 ;
 scalar_t__ GLAD_GL_VERSION_4_3 ;
 int GL_TEXTURE_CUBE_MAP_SEAMLESS ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int gl_enable (int ) ;
 int gl_enable_debug () ;

__attribute__((used)) static bool gl_init_extensions(struct gs_device *device)
{
 if (!GLAD_GL_VERSION_3_3) {
  blog(LOG_ERROR,
       "obs-studio requires OpenGL version 3.3 or higher.");
  return 0;
 }

 gl_enable_debug();

 gl_enable(GL_TEXTURE_CUBE_MAP_SEAMLESS);

 if (GLAD_GL_VERSION_4_3 || GLAD_GL_ARB_copy_image)
  device->copy_type = COPY_TYPE_ARB;
 else if (GLAD_GL_NV_copy_image)
  device->copy_type = COPY_TYPE_NV;
 else
  device->copy_type = COPY_TYPE_FBO_BLIT;

 return 1;
}
