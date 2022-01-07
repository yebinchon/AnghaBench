
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ttag_t ;
struct TYPE_4__ {int td_compression; } ;
struct TYPE_5__ {TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;
int
_TIFFCheckFieldIsValidForCodec(TIFF *tif, ttag_t tag)
{

 switch (tag) {

     case 128:

     case 130:

     case 134:
     case 135:
     case 132:
     case 136:
     case 137:
     case 133:
     case 131:

     case 142:
     case 141:
     case 140:
     case 139:
     case 138:

     case 129:
  break;
     default:
  return 1;
 }


 switch (tif->tif_dir.td_compression) {
     case 152:
  if (tag == 128)
      return 1;
  break;
     case 149:

  break;
     case 145:

  break;
     case 151:

  break;
     case 155:
  if (tag == 130)
      return 1;
  break;
     case 150:
  switch (tag) {
      case 134:
      case 135:
      case 132:
      case 136:
      case 137:
      case 133:
      case 131:
   return 1;
  }
  break;
     case 159:
     case 158:
     case 161:
     case 160:
  switch (tag) {
      case 142:
      case 141:
      case 140:
   return 1;
      case 139:
   if (tif->tif_dir.td_compression == 161)
       return 1;
   break;
      case 138:
   if (tif->tif_dir.td_compression == 160)
       return 1;
   break;
  }
  break;
     case 156:

  break;
     case 157:
     case 162:
  if (tag == 128)
      return 1;
  break;
    case 148:
  if (tag == 128)
      return 1;
  break;
     case 147:
     case 146:

  break;
     case 153:
  if (tag == 128)
      return 1;
  break;
     case 143:
  if (tag == 128)
      return 1;
  break;
     case 154:
  if (tag == 129)
      return 1;
  break;
    case 144:
  if (tag == 128)
    return 1;
  break;
 }
 return 0;
}
