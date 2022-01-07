
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int * linesize; int * data; int full_range; int format; } ;
typedef int gs_texture_t ;
 size_t MAX_AV_PLANES ;
 int assert (int ) ;
 int get_convert_type (int ,int ) ;
 int gs_texture_set_image (int *,int ,int ,int) ;

__attribute__((used)) static void upload_raw_frame(gs_texture_t *tex[MAX_AV_PLANES],
        const struct obs_source_frame *frame)
{
 switch (get_convert_type(frame->format, frame->full_range)) {
 case 136:
 case 132:
 case 128:
 case 131:
 case 140:
 case 138:
 case 129:
 case 135:
 case 139:
 case 137:
 case 134:
 case 133:
  for (size_t c = 0; c < MAX_AV_PLANES; c++) {
   if (tex[c])
    gs_texture_set_image(tex[c], frame->data[c],
           frame->linesize[c], 0);
  }
  break;

 case 130:
  assert(0 && "No conversion requested");
  break;
 }
}
