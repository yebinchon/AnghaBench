
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuffer_t ;
typedef int json_t ;


 int dump_to_strbuffer ;
 scalar_t__ json_dump_callback (int const*,int ,void*,size_t) ;
 char* jsonp_strdup (int ) ;
 int strbuffer_close (int *) ;
 scalar_t__ strbuffer_init (int *) ;
 int strbuffer_value (int *) ;

char *json_dumps(const json_t *json, size_t flags)
{
    strbuffer_t strbuff;
    char *result;

    if(strbuffer_init(&strbuff))
        return ((void*)0);

    if(json_dump_callback(json, dump_to_strbuffer, (void *)&strbuff, flags))
        result = ((void*)0);
    else
        result = jsonp_strdup(strbuffer_value(&strbuff));

    strbuffer_close(&strbuff);
    return result;
}
