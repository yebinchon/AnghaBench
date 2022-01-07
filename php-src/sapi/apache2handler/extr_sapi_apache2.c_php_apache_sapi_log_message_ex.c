
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ request_rec ;


 int APLOG_ERR ;
 int APLOG_MARK ;
 int ap_log_rerror (int ,int ,int ,TYPE_1__*,char*,int ) ;
 int php_apache_sapi_log_message (char*,int) ;

__attribute__((used)) static void php_apache_sapi_log_message_ex(char *msg, request_rec *r)
{
 if (r) {
  ap_log_rerror(APLOG_MARK, APLOG_ERR, 0, r, msg, r->filename);
 } else {
  php_apache_sapi_log_message(msg, -1);
 }
}
