
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ setter; scalar_t__ getter; int value; scalar_t__ explicit_value; } ;
typedef TYPE_1__ property_desc_t ;


 int jsdisp_release (scalar_t__) ;
 int jsval_release (int ) ;

__attribute__((used)) static void release_property_descriptor(property_desc_t *desc)
{
    if(desc->explicit_value)
        jsval_release(desc->value);
    if(desc->getter)
        jsdisp_release(desc->getter);
    if(desc->setter)
        jsdisp_release(desc->setter);
}
