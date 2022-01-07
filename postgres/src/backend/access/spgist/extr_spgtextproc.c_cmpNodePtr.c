
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c; } ;
typedef TYPE_1__ spgNodePtr ;



__attribute__((used)) static int
cmpNodePtr(const void *a, const void *b)
{
 const spgNodePtr *aa = (const spgNodePtr *) a;
 const spgNodePtr *bb = (const spgNodePtr *) b;

 return aa->c - bb->c;
}
