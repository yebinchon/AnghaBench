
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
struct _HPDF_CCITT_Data {int dummy; } ;
typedef int int32 ;
typedef int HPDF_STATUS ;


 int HPDF_OK ;
 int PIXEL (unsigned char*,scalar_t__) ;
 int TIFFFaxBlackCodes ;
 int TIFFFaxWhiteCodes ;
 scalar_t__ finddiff (unsigned char*,scalar_t__,scalar_t__,int) ;
 scalar_t__ finddiff2 (unsigned char*,scalar_t__,scalar_t__,int) ;
 int horizcode ;
 int passcode ;
 int putcode (struct _HPDF_CCITT_Data*,int *) ;
 int putspan (struct _HPDF_CCITT_Data*,scalar_t__,int ) ;
 int * vcodes ;

__attribute__((used)) static HPDF_STATUS
HPDF_Fax3Encode2DRow(struct _HPDF_CCITT_Data *pData, unsigned char* bp, unsigned char* rp, uint32 bits)
{

        uint32 a0 = 0;
 uint32 a1 = (((((bp)[(0)>>3]) >> (7-((0)&7))) & 1) != 0 ? 0 : finddiff(bp, 0, bits, 0));
 uint32 b1 = (((((rp)[(0)>>3]) >> (7-((0)&7))) & 1) != 0 ? 0 : finddiff(rp, 0, bits, 0));
 uint32 a2, b2;

 for (;;) {
  b2 = finddiff2(rp, b1, bits, ((((rp)[(b1)>>3]) >> (7-((b1)&7))) & 1));
  if (b2 >= a1) {
   int32 d = b1 - a1;
   if (!(-3 <= d && d <= 3)) {
    a2 = finddiff2(bp, a1, bits, ((((bp)[(a1)>>3]) >> (7-((a1)&7))) & 1));
    putcode(pData, &horizcode);
    if (a0+a1 == 0 || ((((bp)[(a0)>>3]) >> (7-((a0)&7))) & 1) == 0) {
     putspan(pData, a1-a0, TIFFFaxWhiteCodes);
     putspan(pData, a2-a1, TIFFFaxBlackCodes);
    } else {
     putspan(pData, a1-a0, TIFFFaxBlackCodes);
     putspan(pData, a2-a1, TIFFFaxWhiteCodes);
    }
    a0 = a2;
   } else {
    putcode(pData, &vcodes[d+3]);
    a0 = a1;
   }
  } else {
   putcode(pData, &passcode);
   a0 = b2;
  }
  if (a0 >= bits)
   break;
  a1 = finddiff(bp, a0, bits, ((((bp)[(a0)>>3]) >> (7-((a0)&7))) & 1));
  b1 = finddiff(rp, a0, bits, !((((bp)[(a0)>>3]) >> (7-((a0)&7))) & 1));
  b1 = finddiff(rp, b1, bits, ((((bp)[(a0)>>3]) >> (7-((a0)&7))) & 1));
 }
 return HPDF_OK;

}
