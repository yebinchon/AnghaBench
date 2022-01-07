
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RString {int c; } ;
typedef int mrb_value ;
struct TYPE_2__ {int c; } ;


 TYPE_1__* mrb_str_ptr (int ) ;

__attribute__((used)) static inline void
str_with_class(struct RString *s, mrb_value obj)
{
  s->c = mrb_str_ptr(obj)->c;
}
