
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;






 int SWS_CS_FCC ;
 int SWS_CS_ITU601 ;
 int SWS_CS_ITU709 ;
 int SWS_CS_SMPTE170M ;
 int SWS_CS_SMPTE240M ;

__attribute__((used)) static inline int get_sws_colorspace(enum AVColorSpace cs)
{
 switch (cs) {
 case 131:
  return SWS_CS_ITU709;
 case 130:
  return SWS_CS_FCC;
 case 129:
  return SWS_CS_SMPTE170M;
 case 128:
  return SWS_CS_SMPTE240M;
 default:
  break;
 }

 return SWS_CS_ITU601;
}
