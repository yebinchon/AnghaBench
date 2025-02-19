
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ t_chunk_info ;
typedef int gdIOCtxPtr ;


 int EOF ;
 int GD2_CHUNKSIZE_MAX ;
 int GD2_CHUNKSIZE_MIN ;
 int GD2_DBG (int ) ;
 int GD2_FMT_COMPRESSED ;
 int GD2_FMT_RAW ;
 int GD2_FMT_TRUECOLOR_COMPRESSED ;
 int GD2_FMT_TRUECOLOR_RAW ;
 int GD2_ID ;
 int INT_MAX ;
 scalar_t__ gd2_compressed (int) ;
 TYPE_1__* gdCalloc (int,int) ;
 int gdFree (TYPE_1__*) ;
 int gdGetC (int ) ;
 int gdGetInt (scalar_t__*,int ) ;
 int gdGetWord (int*,int ) ;
 int gd_error (char*,...) ;
 scalar_t__ overflow2 (int,int) ;
 int printf (char*,int,int) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int _gd2GetHeader(gdIOCtxPtr in, int *sx, int *sy, int *cs, int *vers, int *fmt, int *ncx, int *ncy, t_chunk_info ** chunkIdx)
{
 int i;
 int ch;
 char id[5];
 t_chunk_info *cidx;
 int sidx;
 int nc;

 GD2_DBG(gd_error("Reading gd2 header info"));

 for (i = 0; i < 4; i++) {
  ch = gdGetC(in);
  if (ch == EOF) {
   goto fail1;
  }
  id[i] = ch;
 }
 id[4] = 0;

 GD2_DBG(gd_error("Got file code: %s", id));


 if (strcmp(id, GD2_ID) != 0) {
  GD2_DBG(gd_error("Not a valid gd2 file"));
  goto fail1;
 }


 if (gdGetWord(vers, in) != 1) {
  goto fail1;
 }
 GD2_DBG(gd_error("Version: %d", *vers));

 if ((*vers != 1) && (*vers != 2)) {
  GD2_DBG(gd_error("Bad version: %d", *vers));
  goto fail1;
 }


 if (!gdGetWord(sx, in)) {
  GD2_DBG(gd_error("Could not get x-size"));
  goto fail1;
 }
 if (!gdGetWord(sy, in)) {
  GD2_DBG(gd_error("Could not get y-size"));
  goto fail1;
 }
 GD2_DBG(gd_error("Image is %dx%d", *sx, *sy));


 if (gdGetWord(cs, in) != 1) {
  goto fail1;
 }
 GD2_DBG(gd_error("ChunkSize: %d", *cs));

 if ((*cs < GD2_CHUNKSIZE_MIN) || (*cs > GD2_CHUNKSIZE_MAX)) {
  GD2_DBG(gd_error("Bad chunk size: %d", *cs));
  goto fail1;
 }


 if (gdGetWord(fmt, in) != 1) {
  goto fail1;
 }
 GD2_DBG(gd_error("Format: %d", *fmt));

 if ((*fmt != GD2_FMT_RAW) && (*fmt != GD2_FMT_COMPRESSED) && (*fmt != GD2_FMT_TRUECOLOR_RAW) && (*fmt != GD2_FMT_TRUECOLOR_COMPRESSED)) {
  GD2_DBG(gd_error("Bad data format: %d", *fmt));
  goto fail1;
 }


 if (gdGetWord(ncx, in) != 1) {
  goto fail1;
 }
 GD2_DBG(gd_error("%d Chunks Wide", *ncx));


 if (gdGetWord(ncy, in) != 1) {
  goto fail1;
 }
 GD2_DBG(gd_error("%d Chunks vertically", *ncy));

 if (gd2_compressed(*fmt)) {
  if (*ncx <= 0 || *ncy <= 0 || *ncx > INT_MAX / *ncy) {
   GD2_DBG(printf ("Illegal chunk counts: %d * %d\n", *ncx, *ncy));
   goto fail1;
  }
  nc = (*ncx) * (*ncy);
  GD2_DBG(gd_error("Reading %d chunk index entries", nc));
  if (overflow2(sizeof(t_chunk_info), nc)) {
   goto fail1;
  }
  sidx = sizeof(t_chunk_info) * nc;
  if (sidx <= 0) {
   goto fail1;
  }
  cidx = gdCalloc(sidx, 1);
  if (cidx == ((void*)0)) {
   goto fail1;
  }

  for (i = 0; i < nc; i++) {
   if (gdGetInt(&cidx[i].offset, in) != 1) {
    gdFree(cidx);
    goto fail1;
   }
   if (gdGetInt(&cidx[i].size, in) != 1) {
    gdFree(cidx);
    goto fail1;
   }
   if (cidx[i].offset < 0 || cidx[i].size < 0) {
    gdFree(cidx);
    goto fail1;
   }
  }
  *chunkIdx = cidx;
 }

 GD2_DBG(gd_error("gd2 header complete"));

 return 1;

fail1:
 return 0;
}
