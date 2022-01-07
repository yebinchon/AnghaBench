
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length_flags; } ;
typedef TYPE_1__ jsstr_t ;


 int JSSTR_LENGTH_SHIFT ;

__attribute__((used)) static inline unsigned jsstr_length(jsstr_t *str)
{
    return str->length_flags >> JSSTR_LENGTH_SHIFT;
}
