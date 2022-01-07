
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwnd; } ;
struct gs_init_data {TYPE_1__ window; } ;
struct gl_windowinfo {int hdc; int hwnd; } ;


 int GetDC (int ) ;
 int LOG_ERROR ;
 int bfree (struct gl_windowinfo*) ;
 int blog (int ,char*) ;
 struct gl_windowinfo* bzalloc (int) ;

__attribute__((used)) static struct gl_windowinfo *gl_windowinfo_bare(const struct gs_init_data *info)
{
 struct gl_windowinfo *wi = bzalloc(sizeof(struct gl_windowinfo));
 wi->hwnd = info->window.hwnd;
 wi->hdc = GetDC(wi->hwnd);

 if (!wi->hdc) {
  blog(LOG_ERROR, "Unable to get device context from window");
  bfree(wi);
  return ((void*)0);
 }

 return wi;
}
