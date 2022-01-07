
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
struct php_user_stream_wrapper {struct php_user_stream_wrapper* classname; struct php_user_stream_wrapper* protoname; } ;


 int efree (struct php_user_stream_wrapper*) ;

__attribute__((used)) static void stream_wrapper_dtor(zend_resource *rsrc)
{
 struct php_user_stream_wrapper * uwrap = (struct php_user_stream_wrapper*)rsrc->ptr;

 efree(uwrap->protoname);
 efree(uwrap->classname);
 efree(uwrap);
}
