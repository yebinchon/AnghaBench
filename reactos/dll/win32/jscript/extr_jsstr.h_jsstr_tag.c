
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsstr_tag_t ;
struct TYPE_3__ {int length_flags; } ;
typedef TYPE_1__ jsstr_t ;


 int JSSTR_FLAG_TAG_MASK ;

__attribute__((used)) static inline jsstr_tag_t jsstr_tag(jsstr_t *str)
{
    return str->length_flags & JSSTR_FLAG_TAG_MASK;
}
