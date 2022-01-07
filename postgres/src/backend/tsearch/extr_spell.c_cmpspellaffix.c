
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef TYPE_2__ SPELL ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
cmpspellaffix(const void *s1, const void *s2)
{
 return strcmp((*(SPELL *const *) s1)->p.flag,
      (*(SPELL *const *) s2)->p.flag);
}
