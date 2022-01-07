
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ln; } ;
struct TYPE_4__ {int ln; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 TYPE_2__* nid_objs ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int ln_cmp(const ASN1_OBJECT *const *a, const unsigned int *b)
{
    return strcmp((*a)->ln, nid_objs[*b].ln);
}
