
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_context {int hwnd; int hrc; } ;


 int DestroyWindow (int ) ;
 int memset (struct dummy_context*,int ,int) ;
 int wglDeleteContext (int ) ;
 int wglMakeCurrent (int *,int *) ;

__attribute__((used)) static inline void gl_dummy_context_free(struct dummy_context *dummy)
{
 wglMakeCurrent(((void*)0), ((void*)0));
 wglDeleteContext(dummy->hrc);
 DestroyWindow(dummy->hwnd);
 memset(dummy, 0, sizeof(struct dummy_context));
}
