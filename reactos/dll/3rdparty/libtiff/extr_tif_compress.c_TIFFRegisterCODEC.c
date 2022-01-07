
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
struct TYPE_5__ {TYPE_2__* info; struct TYPE_5__* next; } ;
typedef TYPE_1__ codec_t ;
struct TYPE_6__ {char* name; int init; int scheme; } ;
typedef int TIFFInitMethod ;
typedef TYPE_2__ TIFFCodec ;


 int TIFFErrorExt (int ,char*,char*,char const*) ;
 scalar_t__ _TIFFmalloc (int ) ;
 TYPE_1__* registeredCODECS ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

TIFFCodec*
TIFFRegisterCODEC(uint16 scheme, const char* name, TIFFInitMethod init)
{
 codec_t* cd = (codec_t*)
     _TIFFmalloc((tmsize_t)(sizeof (codec_t) + sizeof (TIFFCodec) + strlen(name)+1));

 if (cd != ((void*)0)) {
  cd->info = (TIFFCodec*) ((uint8*) cd + sizeof (codec_t));
  cd->info->name = (char*)
      ((uint8*) cd->info + sizeof (TIFFCodec));
  strcpy(cd->info->name, name);
  cd->info->scheme = scheme;
  cd->info->init = init;
  cd->next = registeredCODECS;
  registeredCODECS = cd;
 } else {
  TIFFErrorExt(0, "TIFFRegisterCODEC",
      "No space to register compression scheme %s", name);
  return ((void*)0);
 }
 return (cd->info);
}
