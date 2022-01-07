
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_3__ {scalar_t__ vc_type; } ;


 scalar_t__ CONV_NONE ;
 TYPE_1__ output_conv ;
 int * string_convert (TYPE_1__*,int *,int *) ;
 int vim_free (int *) ;

__attribute__((used)) static const char *
convert_localized_message(char_u **buffer, const char *message)
{
    if (output_conv.vc_type == CONV_NONE)
 return message;

    vim_free(*buffer);
    *buffer = string_convert(&output_conv, (char_u *)message, ((void*)0));

    return (const char *)*buffer;
}
