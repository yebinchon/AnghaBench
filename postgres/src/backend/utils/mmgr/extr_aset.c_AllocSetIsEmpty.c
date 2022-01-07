
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isReset; } ;
typedef TYPE_1__* MemoryContext ;



__attribute__((used)) static bool
AllocSetIsEmpty(MemoryContext context)
{






 if (context->isReset)
  return 1;
 return 0;
}
