
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nentries; } ;
typedef TYPE_1__ TIDBitmap ;



bool
tbm_is_empty(const TIDBitmap *tbm)
{
 return (tbm->nentries == 0);
}
