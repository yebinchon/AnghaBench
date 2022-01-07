
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int php_stream_statbuf ;
struct TYPE_4__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_5__ {int internal_file; int phar; } ;
typedef TYPE_2__ phar_entry_data ;


 int phar_dostat (int ,int ,int *,int ) ;

__attribute__((used)) static int phar_stream_stat(php_stream *stream, php_stream_statbuf *ssb)
{
 phar_entry_data *data = (phar_entry_data *)stream->abstract;


 if (!ssb) {
  return -1;
 }

 phar_dostat(data->phar, data->internal_file, ssb, 0);
 return 0;
}
