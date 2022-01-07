
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int device; } ;
typedef int bstr ;


 int bstr0 (int ) ;
 int bstr_strip (int ) ;

bstr wasapi_get_specified_device_string(struct ao *ao)
{
    return bstr_strip(bstr0(ao->device));
}
