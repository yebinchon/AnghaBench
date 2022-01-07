
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; scalar_t__ name; } ;
typedef TYPE_1__ mbfl_html_entity_entry ;
struct TYPE_6__ {int status; int data; int (* output_function ) (int,int ) ;scalar_t__ opaque; } ;
typedef TYPE_2__ mbfl_convert_filter ;


 int CK (int ) ;
 int html_enc_buffer_size ;
 int html_entity_chars ;
 int mbfl_filt_conv_html_dec_flush (TYPE_2__*) ;
 scalar_t__ mbfl_html_entity_list ;
 int strchr (int ,int) ;
 int strcmp (char*,scalar_t__) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (char,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;

int mbfl_filt_conv_html_dec(int c, mbfl_convert_filter *filter)
{
 int pos, ent = 0;
 mbfl_html_entity_entry *entity;
 char *buffer = (char*)filter->opaque;

 if (!filter->status) {
  if (c == '&' ) {
   filter->status = 1;
   buffer[0] = '&';
  } else {
   CK((*filter->output_function)(c, filter->data));
  }
 } else {
  if (c == ';') {
   if (buffer[1]=='#') {
    if (filter->status > 2 && (buffer[2] == 'x' || buffer[2] == 'X')) {
     if (filter->status > 3) {

      for (pos=3; pos<filter->status; pos++) {
       int v = buffer[pos];
       if (v >= '0' && v <= '9') {
        v = v - '0';
       } else if (v >= 'A' && v <= 'F') {
        v = v - 'A' + 10;
       } else if (v >= 'a' && v <= 'f') {
        v = v - 'a' + 10;
       } else {
        ent = -1;
        break;
       }
       ent = ent * 16 + v;
      }
     } else {
      ent = -1;
     }
    } else {

     if (filter->status > 2) {
      for (pos=2; pos<filter->status; pos++) {
       int v = buffer[pos];
       if (v >= '0' && v <= '9') {
        v = v - '0';
       } else {
        ent = -1;
        break;
       }
       ent = ent*10 + v;
      }
     } else {
      ent = -1;
     }
    }
    if (ent >= 0 && ent < 0x110000) {
     CK((*filter->output_function)(ent, filter->data));
    } else {
     for (pos = 0; pos < filter->status; pos++) {
      CK((*filter->output_function)(buffer[pos], filter->data));
     }
     CK((*filter->output_function)(c, filter->data));
    }
    filter->status = 0;

   } else {

    buffer[filter->status] = 0;
    entity = (mbfl_html_entity_entry *)mbfl_html_entity_list;
    while (entity->name) {
     if (!strcmp(buffer+1, entity->name)) {
      ent = entity->code;
      break;
     }
     entity++;
    }
    if (ent) {

     CK((*filter->output_function)(ent, filter->data));
     filter->status = 0;

    } else {

     buffer[filter->status++] = ';';
     buffer[filter->status] = 0;

     mbfl_filt_conv_html_dec_flush(filter);
    }
   }
  } else {

   buffer[filter->status++] = c;

   if (!strchr(html_entity_chars, c) || filter->status+1==html_enc_buffer_size || (c=='#' && filter->status>2))
   {

    if (c=='&')
     filter->status--;
    buffer[filter->status] = 0;

    mbfl_filt_conv_html_dec_flush(filter);
    if (c=='&')
    {
     buffer[filter->status++] = '&';
    }
   }
  }
 }
 return c;
}
