
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num; TYPE_1__* array; } ;
struct ep_struct {TYPE_2__ vars; } ;
struct TYPE_3__ {int * mapping; } ;



__attribute__((used)) static inline bool ep_struct_mapped(struct ep_struct *eps)
{
 if (eps->vars.num > 0)
  return eps->vars.array[0].mapping != ((void*)0);

 return 0;
}
