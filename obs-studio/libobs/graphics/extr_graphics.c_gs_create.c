
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct graphics_subsystem {int dummy; } ;
struct TYPE_8__ {int (* device_create ) (int *,int ) ;} ;
struct TYPE_7__ {int device; TYPE_2__ exports; int module; int effect_mutex; int mutex; } ;
typedef TYPE_1__ graphics_t ;


 int GS_ERROR_FAIL ;
 int GS_ERROR_MODULE_NOT_FOUND ;
 int GS_SUCCESS ;
 TYPE_1__* bzalloc (int) ;
 int graphics_init (TYPE_1__*) ;
 int gs_destroy (TYPE_1__*) ;
 int load_graphics_imports (TYPE_2__*,int ,char const*) ;
 int os_dlopen (char const*) ;
 int pthread_mutex_init_value (int *) ;
 int stub1 (int *,int ) ;

int gs_create(graphics_t **pgraphics, const char *module, uint32_t adapter)
{
 int errcode = GS_ERROR_FAIL;

 graphics_t *graphics = bzalloc(sizeof(struct graphics_subsystem));
 pthread_mutex_init_value(&graphics->mutex);
 pthread_mutex_init_value(&graphics->effect_mutex);

 graphics->module = os_dlopen(module);
 if (!graphics->module) {
  errcode = GS_ERROR_MODULE_NOT_FOUND;
  goto error;
 }

 if (!load_graphics_imports(&graphics->exports, graphics->module,
       module))
  goto error;

 errcode = graphics->exports.device_create(&graphics->device, adapter);
 if (errcode != GS_SUCCESS)
  goto error;

 if (!graphics_init(graphics)) {
  errcode = GS_ERROR_FAIL;
  goto error;
 }

 *pgraphics = graphics;
 return errcode;

error:
 gs_destroy(graphics);
 return errcode;
}
