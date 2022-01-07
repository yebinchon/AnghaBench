
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccname; } ;
typedef TYPE_1__ ConstrCheck ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
CheckConstraintCmp(const void *a, const void *b)
{
 const ConstrCheck *ca = (const ConstrCheck *) a;
 const ConstrCheck *cb = (const ConstrCheck *) b;

 return strcmp(ca->ccname, cb->ccname);
}
