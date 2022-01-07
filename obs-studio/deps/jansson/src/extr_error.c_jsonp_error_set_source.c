
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ source; } ;
typedef TYPE_1__ json_error_t ;


 size_t JSON_ERROR_SOURCE_LENGTH ;
 size_t strlen (char const*) ;
 int strncpy (scalar_t__,char const*,size_t) ;

void jsonp_error_set_source(json_error_t *error, const char *source)
{
    size_t length;

    if(!error || !source)
        return;

    length = strlen(source);
    if(length < JSON_ERROR_SOURCE_LENGTH)
        strncpy(error->source, source, length + 1);
    else {
        size_t extra = length - JSON_ERROR_SOURCE_LENGTH + 4;
        strncpy(error->source, "...", 3);
        strncpy(error->source + 3, source + extra, length - extra + 1);
    }
}
