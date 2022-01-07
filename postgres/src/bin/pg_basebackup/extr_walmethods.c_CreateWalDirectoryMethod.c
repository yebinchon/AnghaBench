
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int getlasterror; int finish; int existsfile; int sync; int close; int get_file_size; int get_current_pos; int write; int open_for_write; } ;
typedef TYPE_1__ WalWriteMethod ;
struct TYPE_5__ {int compression; int sync; int basedir; } ;
typedef int DirectoryMethodData ;


 int dir_close ;
 TYPE_2__* dir_data ;
 int dir_existsfile ;
 int dir_finish ;
 int dir_get_current_pos ;
 int dir_get_file_size ;
 int dir_getlasterror ;
 int dir_open_for_write ;
 int dir_sync ;
 int dir_write ;
 void* pg_malloc0 (int) ;
 int pg_strdup (char const*) ;

WalWriteMethod *
CreateWalDirectoryMethod(const char *basedir, int compression, bool sync)
{
 WalWriteMethod *method;

 method = pg_malloc0(sizeof(WalWriteMethod));
 method->open_for_write = dir_open_for_write;
 method->write = dir_write;
 method->get_current_pos = dir_get_current_pos;
 method->get_file_size = dir_get_file_size;
 method->close = dir_close;
 method->sync = dir_sync;
 method->existsfile = dir_existsfile;
 method->finish = dir_finish;
 method->getlasterror = dir_getlasterror;

 dir_data = pg_malloc0(sizeof(DirectoryMethodData));
 dir_data->compression = compression;
 dir_data->basedir = pg_strdup(basedir);
 dir_data->sync = sync;

 return method;
}
