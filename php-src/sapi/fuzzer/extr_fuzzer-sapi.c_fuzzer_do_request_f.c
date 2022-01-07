
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fp; } ;
struct TYPE_5__ {char* filename; int * opened_path; TYPE_1__ handle; int type; } ;
typedef TYPE_2__ zend_file_handle ;


 int ZEND_HANDLE_FILENAME ;
 int fuzzer_do_request (TYPE_2__*,char*) ;

int fuzzer_do_request_f(char *filename)
{
 zend_file_handle file_handle;
 file_handle.type = ZEND_HANDLE_FILENAME;
 file_handle.filename = filename;
 file_handle.handle.fp = ((void*)0);
 file_handle.opened_path = ((void*)0);

 return fuzzer_do_request(&file_handle, filename);
}
