
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int * getOwnedSequences_internal (int ,int ,int ) ;

List *
getOwnedSequences(Oid relid)
{
 return getOwnedSequences_internal(relid, 0, 0);
}
