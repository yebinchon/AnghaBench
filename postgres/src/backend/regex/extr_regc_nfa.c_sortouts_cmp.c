
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arc {scalar_t__ co; scalar_t__ type; TYPE_1__* to; } ;
struct TYPE_2__ {scalar_t__ no; } ;



__attribute__((used)) static int
sortouts_cmp(const void *a, const void *b)
{
 const struct arc *aa = *((const struct arc *const *) a);
 const struct arc *bb = *((const struct arc *const *) b);


 if (aa->to->no < bb->to->no)
  return -1;
 if (aa->to->no > bb->to->no)
  return 1;
 if (aa->co < bb->co)
  return -1;
 if (aa->co > bb->co)
  return 1;
 if (aa->type < bb->type)
  return -1;
 if (aa->type > bb->type)
  return 1;
 return 0;
}
