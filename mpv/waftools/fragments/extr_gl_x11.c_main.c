
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int True ;
 int glXCreateContext (int *,int *,int *,int ) ;
 int glXGetCurrentDisplay () ;
 int glXGetProcAddressARB (char*) ;
 int glXQueryExtensionsString (int *,int ) ;

int main(int argc, char *argv[]) {
  glXCreateContext(((void*)0), ((void*)0), ((void*)0), True);
  glXQueryExtensionsString(((void*)0), 0);
  glXGetProcAddressARB("");
  glXGetCurrentDisplay();
  return 0;
}
