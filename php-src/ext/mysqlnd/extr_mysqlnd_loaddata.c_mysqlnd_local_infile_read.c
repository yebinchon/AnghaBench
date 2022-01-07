
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_uchar ;
struct TYPE_2__ {int error_no; int error_msg; int fd; } ;
typedef TYPE_1__ MYSQLND_INFILE_INFO ;


 int CR_UNKNOWN_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_RETURN (int) ;
 scalar_t__ php_stream_read (int ,char*,unsigned int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static
int mysqlnd_local_infile_read(void * ptr, zend_uchar * buf, unsigned int buf_len)
{
 MYSQLND_INFILE_INFO *info = (MYSQLND_INFILE_INFO *)ptr;
 int count;

 DBG_ENTER("mysqlnd_local_infile_read");

 count = (int) php_stream_read(info->fd, (char *) buf, buf_len);

 if (count < 0) {
  strcpy(info->error_msg, "Error reading file");
  info->error_no = CR_UNKNOWN_ERROR;
 }

 DBG_RETURN(count);
}
