
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; } ;
typedef TYPE_1__ json_string_t ;


 int jsonp_free (TYPE_1__*) ;

__attribute__((used)) static void json_delete_string(json_string_t *string)
{
    jsonp_free(string->value);
    jsonp_free(string);
}
