
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demangle_callbackref ;


 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 int DMGL_RET_POSTFIX ;
 int d_demangle_callback (char const*,int,int ,void*) ;

int
java_demangle_v3_callback (const char *mangled,
                           demangle_callbackref callback, void *opaque)
{
  return d_demangle_callback (mangled,
                              DMGL_JAVA | DMGL_PARAMS | DMGL_RET_POSTFIX,
                              callback, opaque);
}
