
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* startup ) (TYPE_1__*) ;} ;
typedef TYPE_1__ zend_extension ;


 scalar_t__ SUCCESS ;
 scalar_t__ stub1 (TYPE_1__*) ;
 int zend_append_version_info (TYPE_1__*) ;

__attribute__((used)) static int zend_extension_startup(zend_extension *extension)
{
 return 0;
}
