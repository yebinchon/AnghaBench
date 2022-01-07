
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int _u16 ;
typedef int _i16 ;


 unsigned int SL_SOCKET_PAYLOAD_BASE ;
 int const SL_SOCKET_PAYLOAD_TYPE_MASK ;
 unsigned int* _SlPayloadByProtocolLUT ;

_u16 _sl_TruncatePayloadByProtocol(const _i16 sd, const _u16 length)
{
   unsigned int maxLength;


   maxLength = SL_SOCKET_PAYLOAD_BASE + _SlPayloadByProtocolLUT[((sd & SL_SOCKET_PAYLOAD_TYPE_MASK) >> 4)];



   if( length > maxLength )
   {
      return maxLength;
   }
   else
   {
      return length;
   }
}
