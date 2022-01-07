
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct RString* fshared; } ;
struct TYPE_5__ {TYPE_1__ aux; int len; int ptr; } ;
struct TYPE_6__ {TYPE_2__ heap; } ;
struct RString {TYPE_3__ as; } ;


 int FSHARED ;
 int RSTR_SET_TYPE_FLAG (struct RString*,int ) ;

__attribute__((used)) static struct RString*
str_init_fshared(const struct RString *orig, struct RString *s, struct RString *fshared)
{
  s->as.heap.ptr = orig->as.heap.ptr;
  s->as.heap.len = orig->as.heap.len;
  s->as.heap.aux.fshared = fshared;
  RSTR_SET_TYPE_FLAG(s, FSHARED);
  return s;
}
