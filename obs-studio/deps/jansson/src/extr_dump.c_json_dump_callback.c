
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_dump_callback_t ;


 size_t JSON_ENCODE_ANY ;
 int do_dump (int const*,size_t,int ,int ,void*) ;
 int json_is_array (int const*) ;
 int json_is_object (int const*) ;

int json_dump_callback(const json_t *json, json_dump_callback_t callback, void *data, size_t flags)
{
    if(!(flags & JSON_ENCODE_ANY)) {
        if(!json_is_array(json) && !json_is_object(json))
           return -1;
    }

    return do_dump(json, flags, 0, callback, data);
}
