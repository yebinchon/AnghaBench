
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* val; } ;
typedef TYPE_2__ zend_string ;
struct timeval {int tv_sec; int member_0; } ;
typedef int smart_str ;
struct TYPE_7__ {int headers; } ;
struct TYPE_9__ {TYPE_1__ request; } ;
typedef TYPE_3__ php_cli_server_client ;


 int gettimeofday (struct timeval*,int *) ;
 TYPE_2__* php_format_date (char*,int,int ,int ) ;
 int smart_str_appendl_ex (int *,char*,int,int) ;
 int smart_str_appends_ex (int *,char*,int) ;
 char* zend_hash_str_find_ptr (int *,char*,int) ;
 int zend_string_release_ex (TYPE_2__*,int ) ;

__attribute__((used)) static void append_essential_headers(smart_str* buffer, php_cli_server_client *client, int persistent)
{
 char *val;
 struct timeval tv = {0};

 if (((void*)0) != (val = zend_hash_str_find_ptr(&client->request.headers, "host", sizeof("host")-1))) {
  smart_str_appends_ex(buffer, "Host: ", persistent);
  smart_str_appends_ex(buffer, val, persistent);
  smart_str_appends_ex(buffer, "\r\n", persistent);
 }

 if (!gettimeofday(&tv, ((void*)0))) {
  zend_string *dt = php_format_date("D, d M Y H:i:s", sizeof("D, d M Y H:i:s") - 1, tv.tv_sec, 0);
  smart_str_appends_ex(buffer, "Date: ", persistent);
  smart_str_appends_ex(buffer, dt->val, persistent);
  smart_str_appends_ex(buffer, " GMT\r\n", persistent);
  zend_string_release_ex(dt, 0);
 }

 smart_str_appendl_ex(buffer, "Connection: close\r\n", sizeof("Connection: close\r\n") - 1, persistent);
}
