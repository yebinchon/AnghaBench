
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_t ;
struct video_output_info {int fps_num; } ;
struct obs_qsv {int context; int encoder; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int pts; int * linesize; int ** data; } ;
typedef int mfxU64 ;
typedef int mfxBitstream ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int g_QsvCs ;
 int * obs_encoder_video (int ) ;
 int parse_packet (struct obs_qsv*,struct encoder_packet*,int *,int,int*) ;
 int qsv_encoder_encode (int ,int,int *,int *,int ,int ,int **) ;
 struct video_output_info* video_output_get_info (int *) ;
 int warn (char*) ;

__attribute__((used)) static bool obs_qsv_encode(void *data, struct encoder_frame *frame,
      struct encoder_packet *packet, bool *received_packet)
{
 struct obs_qsv *obsqsv = data;

 if (!frame || !packet || !received_packet)
  return 0;

 EnterCriticalSection(&g_QsvCs);

 video_t *video = obs_encoder_video(obsqsv->encoder);
 const struct video_output_info *voi = video_output_get_info(video);

 mfxBitstream *pBS = ((void*)0);

 int ret;

 mfxU64 qsvPTS = frame->pts * 90000 / voi->fps_num;



 if (frame)
  ret = qsv_encoder_encode(obsqsv->context, qsvPTS,
      frame->data[0], frame->data[1],
      frame->linesize[0], frame->linesize[1],
      &pBS);
 else
  ret = qsv_encoder_encode(obsqsv->context, qsvPTS, ((void*)0), ((void*)0), 0,
      0, &pBS);

 if (ret < 0) {
  warn("encode failed");
  LeaveCriticalSection(&g_QsvCs);
  return 0;
 }

 parse_packet(obsqsv, packet, pBS, voi->fps_num, received_packet);

 LeaveCriticalSection(&g_QsvCs);

 return 1;
}
