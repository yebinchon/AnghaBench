
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int word; } ;
typedef TYPE_1__ SPELL ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
cmpspell(const void *s1, const void *s2)
{
 return strcmp((*(SPELL *const *) s1)->word, (*(SPELL *const *) s2)->word);
}
