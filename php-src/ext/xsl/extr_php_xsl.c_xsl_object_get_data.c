
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_2__ {int * _private; } ;



zval *xsl_object_get_data(void *obj)
{
 zval *dom_wrapper;
 dom_wrapper = ((xsltStylesheetPtr) obj)->_private;
 return dom_wrapper;
}
