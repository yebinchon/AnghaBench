
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int err; } ;
struct TYPE_10__ {int last_addon_message; int first_addon_message; int addon_message_table; int emit_message; int output_message; int error_exit; } ;
struct TYPE_8__ {int setjmp_buffer; TYPE_3__ pub; int emit_message; } ;
struct TYPE_9__ {int init; TYPE_4__ cinfo; TYPE_1__ jerr; } ;
typedef TYPE_2__ tjinstance ;
typedef int * tjhandle ;


 int COMPRESS ;
 int JMSG_FIRSTADDONCODE ;
 int JMSG_LASTADDONCODE ;
 int free (TYPE_2__*) ;
 int jpeg_create_compress (TYPE_4__*) ;
 int jpeg_mem_dest_tj (TYPE_4__*,unsigned char**,unsigned long*,int ) ;
 int jpeg_std_error (TYPE_3__*) ;
 int my_emit_message ;
 int my_error_exit ;
 int my_output_message ;
 scalar_t__ setjmp (int ) ;
 int turbojpeg_message_table ;

__attribute__((used)) static tjhandle _tjInitCompress(tjinstance *this)
{
 static unsigned char buffer[1];
  unsigned char *buf = buffer;
  unsigned long size = 1;


 this->cinfo.err=jpeg_std_error(&this->jerr.pub);
 this->jerr.pub.error_exit=my_error_exit;
 this->jerr.pub.output_message=my_output_message;
 this->jerr.emit_message=this->jerr.pub.emit_message;
 this->jerr.pub.emit_message=my_emit_message;
  this->jerr.pub.addon_message_table = turbojpeg_message_table;
  this->jerr.pub.first_addon_message = JMSG_FIRSTADDONCODE;
  this->jerr.pub.last_addon_message = JMSG_LASTADDONCODE;

  if (setjmp(this->jerr.setjmp_buffer)) {

  if(this) free(this);
  return ((void*)0);
 }

 jpeg_create_compress(&this->cinfo);

 jpeg_mem_dest_tj(&this->cinfo, &buf, &size, 0);

 this->init|=COMPRESS;
 return (tjhandle)this;
}
