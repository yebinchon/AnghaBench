
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_4__ {scalar_t__ td_samplesperpixel; } ;
struct TYPE_5__ {int tif_name; int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char*,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32
checkInkNamesString(TIFF* tif, uint32 slen, const char* s)
{
 TIFFDirectory* td = &tif->tif_dir;
 uint16 i = td->td_samplesperpixel;

 if (slen > 0) {
  const char* ep = s+slen;
  const char* cp = s;
  for (; i > 0; i--) {
   for (; cp < ep && *cp != '\0'; cp++) {}
   if (cp >= ep)
    goto bad;
   cp++;
  }
  return ((uint32)(cp-s));
 }
bad:
 TIFFErrorExt(tif->tif_clientdata, "TIFFSetField",
     "%s: Invalid InkNames value; expecting %d names, found %d",
     tif->tif_name,
     td->td_samplesperpixel,
     td->td_samplesperpixel-i);
 return (0);
}
