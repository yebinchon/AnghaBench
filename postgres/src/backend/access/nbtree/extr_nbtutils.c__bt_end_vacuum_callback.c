
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int _bt_end_vacuum (int ) ;

void
_bt_end_vacuum_callback(int code, Datum arg)
{
 _bt_end_vacuum((Relation) DatumGetPointer(arg));
}
