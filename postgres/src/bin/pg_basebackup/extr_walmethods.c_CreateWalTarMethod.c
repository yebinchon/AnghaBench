
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int getlasterror; int finish; int existsfile; int sync; int close; int get_file_size; int get_current_pos; int write; int open_for_write; } ;
typedef TYPE_1__ WalWriteMethod ;
typedef int TarMethodData ;
struct TYPE_5__ {int fd; int compression; int sync; char* zlibOut; void* tarfilename; } ;


 scalar_t__ ZLIB_OUT_SIZE ;
 scalar_t__ pg_malloc (scalar_t__) ;
 void* pg_malloc0 (int) ;
 int sprintf (void*,char*,char const*,char const*) ;
 int strlen (char const*) ;
 int tar_close ;
 TYPE_2__* tar_data ;
 int tar_existsfile ;
 int tar_finish ;
 int tar_get_current_pos ;
 int tar_get_file_size ;
 int tar_getlasterror ;
 int tar_open_for_write ;
 int tar_sync ;
 int tar_write ;

WalWriteMethod *
CreateWalTarMethod(const char *tarbase, int compression, bool sync)
{
 WalWriteMethod *method;
 const char *suffix = (compression != 0) ? ".tar.gz" : ".tar";

 method = pg_malloc0(sizeof(WalWriteMethod));
 method->open_for_write = tar_open_for_write;
 method->write = tar_write;
 method->get_current_pos = tar_get_current_pos;
 method->get_file_size = tar_get_file_size;
 method->close = tar_close;
 method->sync = tar_sync;
 method->existsfile = tar_existsfile;
 method->finish = tar_finish;
 method->getlasterror = tar_getlasterror;

 tar_data = pg_malloc0(sizeof(TarMethodData));
 tar_data->tarfilename = pg_malloc0(strlen(tarbase) + strlen(suffix) + 1);
 sprintf(tar_data->tarfilename, "%s%s", tarbase, suffix);
 tar_data->fd = -1;
 tar_data->compression = compression;
 tar_data->sync = sync;





 return method;
}
