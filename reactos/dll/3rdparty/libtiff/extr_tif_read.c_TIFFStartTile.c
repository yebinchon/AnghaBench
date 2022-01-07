
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_7__ {size_t td_tilewidth; size_t td_tilelength; size_t td_stripsperimage; scalar_t__* td_stripbytecount; int td_imagelength; int td_imagewidth; } ;
struct TYPE_8__ {int tif_flags; size_t tif_curtile; size_t tif_row; size_t tif_col; scalar_t__ tif_rawcc; scalar_t__ tif_rawdataloaded; int (* tif_predecode ) (TYPE_2__*,int ) ;int * tif_rawdata; int * tif_rawcp; int tif_clientdata; int (* tif_setupdecode ) (TYPE_2__*) ;TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFF_BUF4WRITE ;
 int TIFF_CODERSETUP ;
 int TIFF_NOREADRAW ;
 size_t TIFFhowmany_32 (int ,size_t) ;
 int _TIFFFillStriles (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int ) ;

__attribute__((used)) static int
TIFFStartTile(TIFF* tif, uint32 tile)
{
        static const char module[] = "TIFFStartTile";
 TIFFDirectory *td = &tif->tif_dir;
        uint32 howmany32;

        if (!_TIFFFillStriles( tif ) || !tif->tif_dir.td_stripbytecount)
                return 0;

 if ((tif->tif_flags & TIFF_CODERSETUP) == 0) {
  if (!(*tif->tif_setupdecode)(tif))
   return (0);
  tif->tif_flags |= TIFF_CODERSETUP;
 }
 tif->tif_curtile = tile;
        howmany32=TIFFhowmany_32(td->td_imagewidth, td->td_tilewidth);
        if (howmany32 == 0) {
                 TIFFErrorExt(tif->tif_clientdata,module,"Zero tiles");
                return 0;
        }
 tif->tif_row = (tile % howmany32) * td->td_tilelength;
        howmany32=TIFFhowmany_32(td->td_imagelength, td->td_tilelength);
        if (howmany32 == 0) {
                TIFFErrorExt(tif->tif_clientdata,module,"Zero tiles");
                return 0;
        }
 tif->tif_col = (tile % howmany32) * td->td_tilewidth;
        tif->tif_flags &= ~TIFF_BUF4WRITE;
 if (tif->tif_flags&TIFF_NOREADRAW)
 {
  tif->tif_rawcp = ((void*)0);
  tif->tif_rawcc = 0;
 }
 else
 {
  tif->tif_rawcp = tif->tif_rawdata;
  if( tif->tif_rawdataloaded > 0 )
   tif->tif_rawcc = tif->tif_rawdataloaded;
  else
   tif->tif_rawcc = (tmsize_t)td->td_stripbytecount[tile];
 }
 return ((*tif->tif_predecode)(tif,
   (uint16)(tile/td->td_stripsperimage)));
}
