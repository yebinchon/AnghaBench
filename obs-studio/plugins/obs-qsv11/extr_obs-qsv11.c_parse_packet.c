
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int nFpsDen; } ;
struct TYPE_8__ {int* array; int num; } ;
struct obs_qsv {TYPE_1__ params; TYPE_4__ packet_data; } ;
struct encoder_packet {int* data; int size; int pts; int keyframe; int priority; int dts; int type; } ;
struct TYPE_7__ {scalar_t__ DataLength; size_t DataOffset; int TimeStamp; int FrameType; int DecodeTimeStamp; int * Data; } ;
typedef TYPE_2__ mfxBitstream ;


 int MFX_FRAMETYPE_I ;
 int MFX_FRAMETYPE_IDR ;
 int MFX_FRAMETYPE_P ;
 int MFX_FRAMETYPE_REF ;
 int OBS_ENCODER_VIDEO ;
 int OBS_NAL_PRIORITY_HIGH ;
 int OBS_NAL_PRIORITY_HIGHEST ;
 int OBS_NAL_SLICE ;
 int OBS_NAL_SLICE_IDR ;
 int da_push_back_array (TYPE_4__,int *,scalar_t__) ;
 int da_resize (TYPE_4__,int ) ;
 int g_bFirst ;
 int g_prevDts ;
 scalar_t__ g_pts2dtsShift ;
 int iType ;
 int info (char*,int ,int,int) ;
 scalar_t__ obs_avc_find_startcode (int*,int*) ;

__attribute__((used)) static void parse_packet(struct obs_qsv *obsqsv, struct encoder_packet *packet,
    mfxBitstream *pBS, uint32_t fps_num,
    bool *received_packet)
{
 uint8_t *start, *end;
 int type;

 if (pBS == ((void*)0) || pBS->DataLength == 0) {
  *received_packet = 0;
  return;
 }

 da_resize(obsqsv->packet_data, 0);
 da_push_back_array(obsqsv->packet_data, &pBS->Data[pBS->DataOffset],
      pBS->DataLength);

 packet->data = obsqsv->packet_data.array;
 packet->size = obsqsv->packet_data.num;
 packet->type = OBS_ENCODER_VIDEO;
 packet->pts = pBS->TimeStamp * fps_num / 90000;
 packet->keyframe = (pBS->FrameType & MFX_FRAMETYPE_IDR);

 uint16_t frameType = pBS->FrameType;
 uint8_t priority;

 if (frameType & MFX_FRAMETYPE_I)
  priority = OBS_NAL_PRIORITY_HIGHEST;
 else if ((frameType & MFX_FRAMETYPE_P) ||
   (frameType & MFX_FRAMETYPE_REF))
  priority = OBS_NAL_PRIORITY_HIGH;
 else
  priority = 0;

 packet->priority = priority;



 start = obsqsv->packet_data.array;
 end = start + obsqsv->packet_data.num;

 start = (uint8_t *)obs_avc_find_startcode(start, end);
 while (1) {
  while (start < end && !*(start++))
   ;

  if (start == end)
   break;

  type = start[0] & 0x1F;
  if (type == OBS_NAL_SLICE_IDR || type == OBS_NAL_SLICE) {
   start[0] &= ~(3 << 5);
   start[0] |=
    priority
    << 5;
  }

  start = (uint8_t *)obs_avc_find_startcode(start, end);
 }





 bool pFrame = pBS->FrameType & MFX_FRAMETYPE_P;





 if (g_pts2dtsShift >= 0) {
  if (g_bFirst) {
   packet->dts = packet->pts - 3 * obsqsv->params.nFpsDen;
  } else if (pFrame) {
   packet->dts = packet->pts - 10 * obsqsv->params.nFpsDen;
   g_prevDts = packet->dts;
  } else {
   packet->dts = g_prevDts + obsqsv->params.nFpsDen;
   g_prevDts = packet->dts;
  }
 } else {
  packet->dts = pBS->DecodeTimeStamp * fps_num / 90000;
 }
 *received_packet = 1;
 pBS->DataLength = 0;

 g_bFirst = 0;
}
