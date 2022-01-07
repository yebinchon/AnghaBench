
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct gl_platform {int context; int pbuffer; int * display; } ;
struct TYPE_3__ {struct gl_platform* plat; } ;
typedef TYPE_1__ gs_device_t ;
typedef int Display ;


 int LOG_ERROR ;
 int UNUSED_PARAMETER (int ) ;
 int XCBOwnsEventQueue ;
 int XCloseDisplay (int *) ;
 int XSetErrorHandler (int ) ;
 int XSetEventQueueOwner (int *,int ) ;
 int bfree (struct gl_platform*) ;
 int blog (int ,char*) ;
 struct gl_platform* bmalloc (int) ;
 int glXMakeContextCurrent (int *,int ,int ,int ) ;
 int gl_context_create (struct gl_platform*) ;
 int gl_context_destroy (struct gl_platform*) ;
 int gladLoadGL () ;
 int * open_windowless_display () ;
 int x_error_handler ;

extern struct gl_platform *gl_platform_create(gs_device_t *device,
           uint32_t adapter)
{



 struct gl_platform *plat = bmalloc(sizeof(struct gl_platform));
 Display *display = open_windowless_display();

 if (!display) {
  goto fail_display_open;
 }

 XSetEventQueueOwner(display, XCBOwnsEventQueue);
 XSetErrorHandler(x_error_handler);


 device->plat = plat;

 plat->display = display;

 if (!gl_context_create(plat)) {
  blog(LOG_ERROR, "Failed to create context!");
  goto fail_context_create;
 }

 if (!glXMakeContextCurrent(plat->display, plat->pbuffer, plat->pbuffer,
       plat->context)) {
  blog(LOG_ERROR, "Failed to make context current.");
  goto fail_make_current;
 }

 if (!gladLoadGL()) {
  blog(LOG_ERROR, "Failed to load OpenGL entry functions.");
  goto fail_load_gl;
 }

 goto success;

fail_make_current:
 gl_context_destroy(plat);
fail_context_create:
fail_load_gl:
 XCloseDisplay(display);
fail_display_open:
 bfree(plat);
 plat = ((void*)0);
success:
 UNUSED_PARAMETER(adapter);
 return plat;
}
