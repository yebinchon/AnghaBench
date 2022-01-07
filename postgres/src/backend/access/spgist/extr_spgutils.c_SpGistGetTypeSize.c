
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int attlen; scalar_t__ attbyval; } ;
typedef TYPE_1__ SpGistTypeDesc ;
typedef int Datum ;


 unsigned int MAXALIGN (unsigned int) ;
 unsigned int VARSIZE_ANY (int ) ;

unsigned int
SpGistGetTypeSize(SpGistTypeDesc *att, Datum datum)
{
 unsigned int size;

 if (att->attbyval)
  size = sizeof(Datum);
 else if (att->attlen > 0)
  size = att->attlen;
 else
  size = VARSIZE_ANY(datum);

 return MAXALIGN(size);
}
