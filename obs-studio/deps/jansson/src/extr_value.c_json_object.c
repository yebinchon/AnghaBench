
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_4__ {int json; scalar_t__ visited; int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 int JSON_OBJECT ;
 scalar_t__ hashtable_init (int *) ;
 int hashtable_seed ;
 int json_init (int *,int ) ;
 int json_object_seed (int ) ;
 int jsonp_free (TYPE_1__*) ;
 TYPE_1__* jsonp_malloc (int) ;

json_t *json_object(void)
{
    json_object_t *object = jsonp_malloc(sizeof(json_object_t));
    if(!object)
        return ((void*)0);

    if (!hashtable_seed) {

        json_object_seed(0);
    }

    json_init(&object->json, JSON_OBJECT);

    if(hashtable_init(&object->hashtable))
    {
        jsonp_free(object);
        return ((void*)0);
    }

    object->visited = 0;

    return &object->json;
}
