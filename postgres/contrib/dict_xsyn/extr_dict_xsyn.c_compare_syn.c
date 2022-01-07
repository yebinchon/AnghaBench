
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef TYPE_1__ Syn ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_syn(const void *a, const void *b)
{
 return strcmp(((const Syn *) a)->key, ((const Syn *) b)->key);
}
