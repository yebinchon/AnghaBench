
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ TParser ;


 int p_iseq (TYPE_1__*,int ) ;

__attribute__((used)) static int
p_isneC(TParser *prs)
{
 return !p_iseq(prs, prs->c);
}
