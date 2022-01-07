
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_4__ {int natts; } ;
typedef int DestReceiver ;


 int TupleDescAttr (TYPE_1__*,int) ;
 int printatt (unsigned int,int ,int *) ;
 int printf (char*) ;

void
debugStartup(DestReceiver *self, int operation, TupleDesc typeinfo)
{
 int natts = typeinfo->natts;
 int i;




 for (i = 0; i < natts; ++i)
  printatt((unsigned) i + 1, TupleDescAttr(typeinfo, i), ((void*)0));
 printf("\t----\n");
}
