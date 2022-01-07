
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* soapMappingPtr ;
struct TYPE_3__ {int to_zval; int to_xml; } ;


 int efree (TYPE_1__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void delete_mapping(void *data)
{
 soapMappingPtr map = (soapMappingPtr)data;

 zval_ptr_dtor(&map->to_xml);
 zval_ptr_dtor(&map->to_zval);
 efree(map);
}
