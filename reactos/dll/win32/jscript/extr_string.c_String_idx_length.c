
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_7__ {int str; TYPE_2__ dispex; } ;
struct TYPE_5__ {int version; } ;
typedef TYPE_3__ StringInstance ;


 int jsstr_length (int ) ;
 TYPE_3__* string_from_jsdisp (int *) ;

__attribute__((used)) static unsigned String_idx_length(jsdisp_t *jsdisp)
{
    StringInstance *string = string_from_jsdisp(jsdisp);
    return string->dispex.ctx->version < 2 ? 0 : jsstr_length(string->str);
}
