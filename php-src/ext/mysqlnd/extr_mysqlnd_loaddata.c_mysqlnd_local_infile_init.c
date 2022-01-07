
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int php_stream_context ;
struct TYPE_2__ {char* filename; int error_no; scalar_t__ error_msg; int * fd; } ;
typedef TYPE_1__ MYSQLND_INFILE_INFO ;


 int CR_UNKNOWN_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_RETURN (int) ;
 int MYSQLND_EE_FILENOTFOUND ;
 scalar_t__ PG (int ) ;
 scalar_t__ mnd_ecalloc (int,int) ;
 int open_basedir ;
 int php_check_open_basedir_ex (char const* const,int ) ;
 int * php_stream_open_wrapper_ex (char*,char*,int ,int *,int *) ;
 int snprintf (char*,int,char*,char const* const) ;
 int strcpy (scalar_t__,char*) ;

__attribute__((used)) static
int mysqlnd_local_infile_init(void ** ptr, const char * const filename)
{
 MYSQLND_INFILE_INFO *info;
 php_stream_context *context = ((void*)0);

 DBG_ENTER("mysqlnd_local_infile_init");

 info = ((MYSQLND_INFILE_INFO *)mnd_ecalloc(1, sizeof(MYSQLND_INFILE_INFO)));
 if (!info) {
  DBG_RETURN(1);
 }

 *ptr = info;


 if (PG(open_basedir)) {
  if (php_check_open_basedir_ex(filename, 0) == -1) {
   strcpy(info->error_msg, "open_basedir restriction in effect. Unable to open file");
   info->error_no = CR_UNKNOWN_ERROR;
   DBG_RETURN(1);
  }
 }

 info->filename = filename;
 info->fd = php_stream_open_wrapper_ex((char *)filename, "r", 0, ((void*)0), context);

 if (info->fd == ((void*)0)) {
  snprintf((char *)info->error_msg, sizeof(info->error_msg), "Can't find file '%-.64s'.", filename);
  info->error_no = MYSQLND_EE_FILENOTFOUND;
  DBG_RETURN(1);
 }

 DBG_RETURN(0);
}
