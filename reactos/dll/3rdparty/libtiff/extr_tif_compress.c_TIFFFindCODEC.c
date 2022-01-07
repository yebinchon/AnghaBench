
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_8__ {TYPE_1__* info; struct TYPE_8__* next; } ;
typedef TYPE_2__ codec_t ;
struct TYPE_9__ {scalar_t__ scheme; scalar_t__ name; } ;
struct TYPE_7__ {scalar_t__ scheme; } ;
typedef TYPE_3__ TIFFCodec ;


 TYPE_3__* _TIFFBuiltinCODECS ;
 TYPE_2__* registeredCODECS ;

const TIFFCodec*
TIFFFindCODEC(uint16 scheme)
{
 const TIFFCodec* c;
 codec_t* cd;

 for (cd = registeredCODECS; cd; cd = cd->next)
  if (cd->info->scheme == scheme)
   return ((const TIFFCodec*) cd->info);
 for (c = _TIFFBuiltinCODECS; c->name; c++)
  if (c->scheme == scheme)
   return (c);
 return ((const TIFFCodec*) 0);
}
