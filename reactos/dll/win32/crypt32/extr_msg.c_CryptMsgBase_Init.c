
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int state; int control; int update; int get_param; int close; int stream_info; int streamed; int open_flags; } ;
typedef int * PCMSG_STREAM_INFO ;
typedef int DWORD ;
typedef int CryptMsgUpdateFunc ;
typedef int CryptMsgGetParamFunc ;
typedef int CryptMsgControlFunc ;
typedef int CryptMsgCloseFunc ;
typedef TYPE_1__ CryptMsgBase ;


 int FALSE ;
 int MsgStateInit ;
 int TRUE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline void CryptMsgBase_Init(CryptMsgBase *msg, DWORD dwFlags,
 PCMSG_STREAM_INFO pStreamInfo, CryptMsgCloseFunc close,
 CryptMsgGetParamFunc get_param, CryptMsgUpdateFunc update,
 CryptMsgControlFunc control)
{
    msg->ref = 1;
    msg->open_flags = dwFlags;
    if (pStreamInfo)
    {
        msg->streamed = TRUE;
        msg->stream_info = *pStreamInfo;
    }
    else
    {
        msg->streamed = FALSE;
        memset(&msg->stream_info, 0, sizeof(msg->stream_info));
    }
    msg->close = close;
    msg->get_param = get_param;
    msg->update = update;
    msg->control = control;
    msg->state = MsgStateInit;
}
