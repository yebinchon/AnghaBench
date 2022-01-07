
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capa; } ;
struct TYPE_5__ {char* ptr; TYPE_1__ aux; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_2__ heap; } ;
struct RString {TYPE_3__ as; } ;
typedef scalar_t__ mrb_int ;


 int NOFREE ;
 int RSTR_SET_TYPE_FLAG (struct RString*,int ) ;

__attribute__((used)) static struct RString*
str_init_nofree(struct RString *s, const char *p, size_t len)
{
  s->as.heap.ptr = (char *)p;
  s->as.heap.len = (mrb_int)len;
  s->as.heap.aux.capa = 0;
  RSTR_SET_TYPE_FLAG(s, NOFREE);
  return s;
}
