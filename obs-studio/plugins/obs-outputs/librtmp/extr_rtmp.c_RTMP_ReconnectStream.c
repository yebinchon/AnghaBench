
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP ;


 int RTMP_ConnectStream (int *,int) ;
 int RTMP_DeleteStream (int *,int) ;
 int RTMP_SendCreateStream (int *) ;

int
RTMP_ReconnectStream(RTMP *r, int seekTime, int streamIdx)
{
    RTMP_DeleteStream(r, streamIdx);

    RTMP_SendCreateStream(r);

    return RTMP_ConnectStream(r, seekTime);
}
