
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_device {int * cur_swap; int empty_vao; int plat; } ;
typedef struct gs_device gs_device_t ;


 int GL_CULL_FACE ;
 int GL_RENDERER ;
 int GL_SHADING_LANGUAGE_VERSION ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int GS_ERROR_FAIL ;
 int GS_ERROR_NOT_SUPPORTED ;
 int GS_SUCCESS ;
 int LOG_ERROR ;
 int LOG_INFO ;
 int bfree (struct gs_device*) ;
 int blog (int ,char*,...) ;
 struct gs_device* bzalloc (int) ;
 int device_leave_context (struct gs_device*) ;
 scalar_t__ glGetString (int ) ;
 int gl_enable (int ) ;
 int gl_gen_vertex_arrays (int,int *) ;
 int gl_init_extensions (struct gs_device*) ;
 int gl_platform_create (struct gs_device*,int ) ;

int device_create(gs_device_t **p_device, uint32_t adapter)
{
 struct gs_device *device = bzalloc(sizeof(struct gs_device));
 int errorcode = GS_ERROR_FAIL;

 blog(LOG_INFO, "---------------------------------");
 blog(LOG_INFO, "Initializing OpenGL...");

 device->plat = gl_platform_create(device, adapter);
 if (!device->plat)
  goto fail;

 const char *glVendor = (const char *)glGetString(GL_VENDOR);
 const char *glRenderer = (const char *)glGetString(GL_RENDERER);

 blog(LOG_INFO, "Loading up OpenGL on adapter %s %s", glVendor,
      glRenderer);

 if (!gl_init_extensions(device)) {
  errorcode = GS_ERROR_NOT_SUPPORTED;
  goto fail;
 }

 const char *glVersion = (const char *)glGetString(GL_VERSION);
 const char *glShadingLanguage =
  (const char *)glGetString(GL_SHADING_LANGUAGE_VERSION);

 blog(LOG_INFO,
      "OpenGL loaded successfully, version %s, shading "
      "language %s",
      glVersion, glShadingLanguage);

 gl_enable(GL_CULL_FACE);
 gl_gen_vertex_arrays(1, &device->empty_vao);

 device_leave_context(device);
 device->cur_swap = ((void*)0);
 *p_device = device;
 return GS_SUCCESS;

fail:
 blog(LOG_ERROR, "device_create (GL) failed");
 bfree(device);

 *p_device = ((void*)0);
 return errorcode;
}
