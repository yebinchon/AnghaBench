
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 int hashtable_close (int *) ;
 int jsonp_free (TYPE_1__*) ;

__attribute__((used)) static void json_delete_object(json_object_t *object)
{
    hashtable_close(&object->hashtable);
    jsonp_free(object);
}
