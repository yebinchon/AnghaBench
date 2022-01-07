
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int jsstr_tag_t ;
struct TYPE_3__ {unsigned int length_flags; int ref; } ;
typedef TYPE_1__ jsstr_t ;


 unsigned int JSSTR_LENGTH_SHIFT ;

__attribute__((used)) static inline void jsstr_init(jsstr_t *str, unsigned len, jsstr_tag_t tag)
{
    str->length_flags = len << JSSTR_LENGTH_SHIFT | tag;
    str->ref = 1;
}
