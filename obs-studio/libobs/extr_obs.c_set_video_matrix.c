
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct obs_video_info {int range; int colorspace; int output_format; } ;
struct obs_core_video {int color_matrix; } ;
struct matrix4 {struct vec4 y; struct vec4 x; } ;


 scalar_t__ format_is_yuv (int ) ;
 int matrix4_identity (struct matrix4*) ;
 int matrix4_inv (struct matrix4*,struct matrix4*) ;
 int memcpy (int ,struct matrix4*,int) ;
 int video_format_get_parameters (int ,int ,float*,int *,int *) ;

__attribute__((used)) static inline void set_video_matrix(struct obs_core_video *video,
        struct obs_video_info *ovi)
{
 struct matrix4 mat;
 struct vec4 r_row;

 if (format_is_yuv(ovi->output_format)) {
  video_format_get_parameters(ovi->colorspace, ovi->range,
         (float *)&mat, ((void*)0), ((void*)0));
  matrix4_inv(&mat, &mat);


  r_row = mat.x;
  mat.x = mat.y;
  mat.y = r_row;
 } else {
  matrix4_identity(&mat);
 }

 memcpy(video->color_matrix, &mat, sizeof(float) * 16);
}
