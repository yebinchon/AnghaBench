
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int shmem_fallback; scalar_t__ hdc; scalar_t__ base_cx; scalar_t__ base_cy; scalar_t__ using_shtex; } ;
typedef scalar_t__ HDC ;


 scalar_t__ INIT_SHTEX_FAILED ;
 scalar_t__ capture_ready () ;
 scalar_t__ capture_should_init () ;
 scalar_t__ capture_should_stop () ;
 TYPE_1__ data ;
 scalar_t__ functions_initialized ;
 int get_window_size (scalar_t__,scalar_t__*,scalar_t__*) ;
 int glGetError () ;
 int gl_free () ;
 scalar_t__ gl_init (scalar_t__) ;
 int gl_shmem_capture () ;
 int gl_shtex_capture () ;
 scalar_t__ init_gl_functions () ;

__attribute__((used)) static void gl_capture(HDC hdc)
{
 static bool critical_failure = 0;

 if (critical_failure) {
  return;
 }

 if (!functions_initialized) {
  functions_initialized = init_gl_functions();
  if (!functions_initialized) {
   critical_failure = 1;
   return;
  }
 }


 glGetError();

 if (capture_should_stop()) {
  gl_free();
 }
 if (capture_should_init()) {
  if (gl_init(hdc) == INIT_SHTEX_FAILED) {
   data.shmem_fallback = 1;
   gl_init(hdc);
  }
 }
 if (capture_ready() && hdc == data.hdc) {
  uint32_t new_cx;
  uint32_t new_cy;


  get_window_size(hdc, &new_cx, &new_cy);
  if (new_cx != data.base_cx || new_cy != data.base_cy) {
   if (new_cx != 0 && new_cy != 0)
    gl_free();
   return;
  }

  if (data.using_shtex)
   gl_shtex_capture();
  else
   gl_shmem_capture();
 }
}
