
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uLongf ;
typedef int gdIOCtx ;


 int FALSE ;
 int GD2_DBG (int ) ;
 int TRUE ;
 int Z_OK ;
 int gdGetBuf (char*,int,int *) ;
 int gdSeek (int *,int) ;
 int gdTell (int *) ;
 int gd_error (char*,...) ;
 int uncompress (unsigned char*,scalar_t__*,unsigned char*,int) ;

__attribute__((used)) static int _gd2ReadChunk (int offset, char *compBuf, int compSize, char *chunkBuf, uLongf * chunkLen, gdIOCtx * in)
{
 int zerr;

 if (gdTell(in) != offset) {
  GD2_DBG(gd_error("Positioning in file to %d", offset));
  gdSeek(in, offset);
 } else {
  GD2_DBG(gd_error("Already Positioned in file to %d", offset));
 }


 GD2_DBG(gd_error("Reading file"));
 if (gdGetBuf(compBuf, compSize, in) != compSize) {
  return FALSE;
 }
 GD2_DBG(gd_error("Got %d bytes. Uncompressing into buffer of %d bytes", compSize, (int)*chunkLen));
 zerr = uncompress((unsigned char *) chunkBuf, chunkLen, (unsigned char *) compBuf, compSize);
 if (zerr != Z_OK) {
  GD2_DBG(gd_error("Error %d from uncompress", zerr));
  return FALSE;
 }
 GD2_DBG(gd_error("Got chunk"));

 return TRUE;
}
