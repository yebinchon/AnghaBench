
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pq; } ;
typedef TYPE_1__ GLUtesselator ;


 int pqDeletePriorityQ (int ) ;

__attribute__((used)) static void DonePriorityQ( GLUtesselator *tess )
{
  pqDeletePriorityQ( tess->pq );
}
