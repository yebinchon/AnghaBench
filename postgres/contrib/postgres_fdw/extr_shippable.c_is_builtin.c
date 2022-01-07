
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ FirstGenbkiObjectId ;

bool
is_builtin(Oid objectId)
{
 return (objectId < FirstGenbkiObjectId);
}
