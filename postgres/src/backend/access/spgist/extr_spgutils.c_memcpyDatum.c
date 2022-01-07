
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int attlen; scalar_t__ attbyval; } ;
typedef TYPE_1__ SpGistTypeDesc ;
typedef int Datum ;


 int * DatumGetPointer (int ) ;
 unsigned int VARSIZE_ANY (int ) ;
 int memcpy (void*,int *,unsigned int) ;

__attribute__((used)) static void
memcpyDatum(void *target, SpGistTypeDesc *att, Datum datum)
{
 unsigned int size;

 if (att->attbyval)
 {
  memcpy(target, &datum, sizeof(Datum));
 }
 else
 {
  size = (att->attlen > 0) ? att->attlen : VARSIZE_ANY(datum);
  memcpy(target, DatumGetPointer(datum), size);
 }
}
