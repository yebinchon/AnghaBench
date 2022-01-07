
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* itemIdSort ;
struct TYPE_2__ {int itemoff; } ;



__attribute__((used)) static int
itemoffcompare(const void *itemidp1, const void *itemidp2)
{

 return ((itemIdSort) itemidp2)->itemoff -
  ((itemIdSort) itemidp1)->itemoff;
}
