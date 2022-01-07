
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_2__* info; } ;
typedef TYPE_1__ codec_t ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ TIFFCodec ;


 int TIFFErrorExt (int ,char*,char*,int ) ;
 int _TIFFfree (TYPE_1__*) ;
 TYPE_1__* registeredCODECS ;

void
TIFFUnRegisterCODEC(TIFFCodec* c)
{
 codec_t* cd;
 codec_t** pcd;

 for (pcd = &registeredCODECS; (cd = *pcd) != ((void*)0); pcd = &cd->next)
  if (cd->info == c) {
   *pcd = cd->next;
   _TIFFfree(cd);
   return;
  }
 TIFFErrorExt(0, "TIFFUnRegisterCODEC",
     "Cannot remove compression scheme %s; not registered", c->name);
}
