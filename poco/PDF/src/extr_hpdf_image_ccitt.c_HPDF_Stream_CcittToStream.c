
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tidata_t ;
struct _HPDF_CCITT_Data {int tif_rawdatasize; scalar_t__ tif_rawdata; scalar_t__ tif_rawcp; scalar_t__ tif_rawcc; int dst; } ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_Encrypt ;
typedef int HPDF_BYTE ;
typedef scalar_t__ HPDF_BOOL ;


 scalar_t__ HPDF_Fax3PreEncode (struct _HPDF_CCITT_Data*) ;
 scalar_t__ HPDF_Fax3SetupState (struct _HPDF_CCITT_Data*,int,int,int) ;
 int HPDF_Fax4Encode (struct _HPDF_CCITT_Data*,scalar_t__,int) ;
 int HPDF_Fax4PostEncode (struct _HPDF_CCITT_Data*) ;
 int HPDF_FreeCCITTFax3 (struct _HPDF_CCITT_Data*) ;
 scalar_t__ HPDF_InitCCITTFax3 (struct _HPDF_CCITT_Data*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_UNUSED (int ) ;
 scalar_t__ malloc (int) ;
 int memset (struct _HPDF_CCITT_Data*,int ,int) ;

HPDF_STATUS
HPDF_Stream_CcittToStream( const HPDF_BYTE *buf,
                            HPDF_Stream dst,
       HPDF_Encrypt e,
       HPDF_UINT width,
       HPDF_UINT height,
       HPDF_UINT line_width,
       HPDF_BOOL top_is_first)
{
 const HPDF_BYTE *pBufPos;
 const HPDF_BYTE *pBufEnd;
 int lineIncrement;
 struct _HPDF_CCITT_Data data;

 HPDF_UNUSED (e);

 if(height==0) return 1;
 if(top_is_first) {
  pBufPos = buf;
  pBufEnd=buf+(line_width*height);
  lineIncrement = line_width;
 } else {
  pBufPos = buf+(line_width*(height-1));
  pBufEnd= buf-line_width;
  lineIncrement = -((int)line_width);
 }

 memset(&data, 0, sizeof(struct _HPDF_CCITT_Data));
 data.dst = dst;
 data.tif_rawdata = (tidata_t) malloc( 16384 );
 data.tif_rawdatasize = 16384;
 data.tif_rawcc = 0;
 data.tif_rawcp = data.tif_rawdata;

 if(HPDF_InitCCITTFax3(&data)!=HPDF_OK)
  return 1;

 if(HPDF_Fax3SetupState(&data, width, height, line_width)!=HPDF_OK)
 {
  HPDF_FreeCCITTFax3(&data);
  return 1;
 }

 if(HPDF_Fax3PreEncode(&data)!=HPDF_OK)
 {
  HPDF_FreeCCITTFax3(&data);
  return 1;
 }


 while(pBufEnd!=pBufPos)
 {
  HPDF_Fax4Encode(&data, (tidata_t)pBufPos, line_width);
  pBufPos+=lineIncrement;
 }

 HPDF_Fax4PostEncode(&data);

 HPDF_FreeCCITTFax3(&data);

 return HPDF_OK;
}
