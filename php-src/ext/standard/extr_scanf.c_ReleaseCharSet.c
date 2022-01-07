
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ranges; scalar_t__ chars; } ;
typedef TYPE_1__ CharSet ;


 int efree (char*) ;

__attribute__((used)) static void ReleaseCharSet(CharSet *cset)
{
 efree((char *)cset->chars);
 if (cset->ranges) {
  efree((char *)cset->ranges);
 }
}
