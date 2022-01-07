
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_file_handle ;
struct TYPE_2__ {scalar_t__ path_translated; } ;


 TYPE_1__ SG (int ) ;
 char* argv0 ;
 int memccpy (char*,scalar_t__,int ,int) ;
 int php_execute_script (int *) ;
 int request_info ;
 int strlen (scalar_t__) ;
 int zend_stream_init_filename (int *,scalar_t__) ;

__attribute__((used)) static int lsapi_execute_script( zend_file_handle * file_handle)
{
    char *p;
    int len;
 zend_stream_init_filename(file_handle, SG(request_info).path_translated);

    p = argv0;
    *p++ = ':';
    len = strlen( SG(request_info).path_translated );
    if ( len > 45 )
        len = len - 45;
    else
        len = 0;
    memccpy( p, SG(request_info).path_translated + len, 0, 46 );

    php_execute_script(file_handle);
    return 0;

}
