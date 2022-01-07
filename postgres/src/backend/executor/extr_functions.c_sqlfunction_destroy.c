
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DestReceiver ;


 int pfree (int *) ;

__attribute__((used)) static void
sqlfunction_destroy(DestReceiver *self)
{
 pfree(self);
}
