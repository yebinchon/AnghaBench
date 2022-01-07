
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int illegal_mode; int illegal_substchar; int (* filter_function ) (int,TYPE_1__*) ;int num_illegalchar; } ;
typedef TYPE_1__ mbfl_convert_filter ;






 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_UCS4MAX ;
 int MBFL_WCSGROUP_WCHARMAX ;





 int MBFL_WCSPLANE_MASK ;

 int mbfl_convert_filter_strcat (TYPE_1__*,unsigned char const*) ;
 int* mbfl_hexchar_table ;
 int stub1 (int,TYPE_1__*) ;
 int stub2 (int,TYPE_1__*) ;
 int stub3 (int,TYPE_1__*) ;
 int stub4 (int,TYPE_1__*) ;
 int stub5 (int,TYPE_1__*) ;
 int stub6 (int,TYPE_1__*) ;

int
mbfl_filt_conv_illegal_output(int c, mbfl_convert_filter *filter)
{
 int mode_backup, substchar_backup, ret, n, m, r;

 ret = 0;

 mode_backup = filter->illegal_mode;
 substchar_backup = filter->illegal_substchar;




 if (filter->illegal_mode == 137
   && filter->illegal_substchar != 0x3f) {
  filter->illegal_substchar = 0x3f;
 } else {
  filter->illegal_mode = 134;
 }

 switch (mode_backup) {
 case 137:
  ret = (*filter->filter_function)(substchar_backup, filter);
  break;
 case 135:
  if (c >= 0) {
   if (c < MBFL_WCSGROUP_UCS4MAX) {
    ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"U+");
   } else {
    if (c < MBFL_WCSGROUP_WCHARMAX) {
     m = c & ~MBFL_WCSPLANE_MASK;
     switch (m) {
     case 131:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"JIS+");
      break;
     case 130:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"JIS2+");
      break;
     case 129:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"JIS3+");
      break;
     case 128:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"W932+");
      break;
     case 132:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"GB+");
      break;
     case 133:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"I8859_1+");
      break;
     default:
      ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"?+");
      break;
     }
     c &= MBFL_WCSPLANE_MASK;
    } else {
     ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"BAD+");
     c &= MBFL_WCSGROUP_MASK;
    }
   }
   if (ret >= 0) {
    m = 0;
    r = 28;
    while (r >= 0) {
     n = (c >> r) & 0xf;
     if (n || m) {
      m = 1;
      ret = (*filter->filter_function)(mbfl_hexchar_table[n], filter);
      if (ret < 0) {
       break;
      }
     }
     r -= 4;
    }
    if (m == 0 && ret >= 0) {
     ret = (*filter->filter_function)(mbfl_hexchar_table[0], filter);
    }
   }
  }
  break;
 case 136:
  if (c >= 0) {
   if (c < MBFL_WCSGROUP_UCS4MAX) {
    ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)"&#x");
    if (ret < 0)
     break;

    m = 0;
    r = 28;
    while (r >= 0) {
     n = (c >> r) & 0xf;
     if (n || m) {
      m = 1;
      ret = (*filter->filter_function)(mbfl_hexchar_table[n], filter);
      if (ret < 0) {
       break;
      }
     }
     r -= 4;
    }
    if (ret < 0) {
     break;
    }
    if (m == 0) {
     ret = (*filter->filter_function)(mbfl_hexchar_table[0], filter);
    }
    ret = mbfl_convert_filter_strcat(filter, (const unsigned char *)";");
   } else {
    ret = (*filter->filter_function)(substchar_backup, filter);
   }
  }
  break;
 case 134:
 default:
  break;
 }

 filter->illegal_mode = mode_backup;
 filter->illegal_substchar = substchar_backup;
 filter->num_illegalchar++;

 return ret;
}
