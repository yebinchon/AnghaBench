
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int orientation; int req_orientation; } ;
typedef TYPE_1__ TIFFRGBAImage ;


 int FLIP_HORIZONTALLY ;
 int FLIP_VERTICALLY ;
__attribute__((used)) static int
setorientation(TIFFRGBAImage* img)
{
 switch (img->orientation) {
  case 129:
  case 132:
   if (img->req_orientation == 128 ||
       img->req_orientation == 130)
    return FLIP_HORIZONTALLY;
   else if (img->req_orientation == 134 ||
       img->req_orientation == 131)
    return FLIP_HORIZONTALLY | FLIP_VERTICALLY;
   else if (img->req_orientation == 135 ||
       img->req_orientation == 133)
    return FLIP_VERTICALLY;
   else
    return 0;
  case 128:
  case 130:
   if (img->req_orientation == 129 ||
       img->req_orientation == 132)
    return FLIP_HORIZONTALLY;
   else if (img->req_orientation == 134 ||
       img->req_orientation == 131)
    return FLIP_VERTICALLY;
   else if (img->req_orientation == 135 ||
       img->req_orientation == 133)
    return FLIP_HORIZONTALLY | FLIP_VERTICALLY;
   else
    return 0;
  case 134:
  case 131:
   if (img->req_orientation == 129 ||
       img->req_orientation == 132)
    return FLIP_HORIZONTALLY | FLIP_VERTICALLY;
   else if (img->req_orientation == 128 ||
       img->req_orientation == 130)
    return FLIP_VERTICALLY;
   else if (img->req_orientation == 135 ||
       img->req_orientation == 133)
    return FLIP_HORIZONTALLY;
   else
    return 0;
  case 135:
  case 133:
   if (img->req_orientation == 129 ||
       img->req_orientation == 132)
    return FLIP_VERTICALLY;
   else if (img->req_orientation == 128 ||
       img->req_orientation == 130)
    return FLIP_HORIZONTALLY | FLIP_VERTICALLY;
   else if (img->req_orientation == 134 ||
       img->req_orientation == 131)
    return FLIP_HORIZONTALLY;
   else
    return 0;
  default:
   return 0;
 }
}
