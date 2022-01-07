
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* method_name; size_t method_size; void* method_load_address; int * source_file_name; int * class_file_name; int method_id; int member_0; } ;
typedef TYPE_1__ iJIT_Method_Load ;


 int iJIT_GetNewMethodID () ;
 scalar_t__ iJIT_IsProfilingActive () ;
 int iJIT_NotifyEvent (int ,void*) ;
 scalar_t__ iJIT_SAMPLING_ON ;
 int iJVM_EVENT_TYPE_METHOD_LOAD_FINISHED ;

__attribute__((used)) static void zend_jit_vtune_register(const char *name,
                                    const void *start,
                                    size_t size)
{
 iJIT_Method_Load jmethod = {0};

 if (iJIT_IsProfilingActive() != iJIT_SAMPLING_ON) {
  return;
 }

 jmethod.method_id = iJIT_GetNewMethodID();
 jmethod.method_name = (char*)name;
 jmethod.class_file_name = ((void*)0);
 jmethod.source_file_name = ((void*)0);
 jmethod.method_load_address = (void*)start;
 jmethod.method_size = size;

 iJIT_NotifyEvent(iJVM_EVENT_TYPE_METHOD_LOAD_FINISHED, (void*)&jmethod);
}
