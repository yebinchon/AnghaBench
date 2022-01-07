
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* error_msg; int error_no; } ;
typedef TYPE_1__ MYSQLND_INFILE_INFO ;


 int CR_UNKNOWN_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,int ) ;
 int DBG_RETURN (int ) ;
 int strlcpy (char*,char*,unsigned int) ;

__attribute__((used)) static
int mysqlnd_local_infile_error(void * ptr, char *error_buf, unsigned int error_buf_len)
{
 MYSQLND_INFILE_INFO *info = (MYSQLND_INFILE_INFO *)ptr;

 DBG_ENTER("mysqlnd_local_infile_error");

 if (info) {
  strlcpy(error_buf, info->error_msg, error_buf_len);
  DBG_INF_FMT("have info, %d", info->error_no);
  DBG_RETURN(info->error_no);
 }

 strlcpy(error_buf, "Unknown error", error_buf_len);
 DBG_INF_FMT("no info, %d", CR_UNKNOWN_ERROR);
 DBG_RETURN(CR_UNKNOWN_ERROR);
}
