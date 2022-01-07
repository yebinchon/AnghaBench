
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_iLen; } ;
struct lsapi_packet_header {char m_type; TYPE_1__ m_packetLen; int m_flag; int m_versionB1; int m_versionB0; } ;


 int LSAPI_ENDIAN ;
 int LSAPI_VERSION_B0 ;
 int LSAPI_VERSION_B1 ;

__attribute__((used)) static inline void lsapi_buildPacketHeader( struct lsapi_packet_header * pHeader,
                                char type, int len )
{
    pHeader->m_versionB0 = LSAPI_VERSION_B0;
    pHeader->m_versionB1 = LSAPI_VERSION_B1;
    pHeader->m_type = type;
    pHeader->m_flag = LSAPI_ENDIAN;
    pHeader->m_packetLen.m_iLen = len;
}
