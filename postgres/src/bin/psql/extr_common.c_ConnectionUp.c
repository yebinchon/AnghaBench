
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 scalar_t__ CONNECTION_BAD ;
 scalar_t__ PQstatus (int ) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
ConnectionUp(void)
{
 return PQstatus(pset.db) != CONNECTION_BAD;
}
