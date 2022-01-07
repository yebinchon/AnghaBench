
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_3__ {int argc; } ;
typedef TYPE_1__ ArgumentsInstance ;


 TYPE_1__* arguments_from_jsdisp (int *) ;

__attribute__((used)) static unsigned Arguments_idx_length(jsdisp_t *jsdisp)
{
    ArgumentsInstance *arguments = arguments_from_jsdisp(jsdisp);
    return arguments->argc;
}
