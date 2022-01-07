
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int sysvmsg_queue_t ;


 int efree (int *) ;

__attribute__((used)) static void sysvmsg_release(zend_resource *rsrc)
{
 sysvmsg_queue_t *mq = (sysvmsg_queue_t *) rsrc->ptr;
 efree(mq);
}
