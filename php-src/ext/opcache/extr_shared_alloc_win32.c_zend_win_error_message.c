
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int ACCEL_EVENT_SOURCE ;
 int DeregisterEventSource (int ) ;
 int EVENTLOG_ERROR_TYPE ;
 int RegisterEventSource (int *,int ) ;
 int ReportEvent (int ,int ,int ,int,int *,int,int ,char**,int *) ;
 int TEXT (int ) ;
 int php_win32_error_msg_free (char*) ;
 char* php_win32_error_to_msg (int) ;
 int zend_accel_error (int,char*,char*) ;

__attribute__((used)) static void zend_win_error_message(int type, char *msg, int err)
{
 HANDLE h;
 char *ev_msgs[2];
 char *buf = php_win32_error_to_msg(err);

 h = RegisterEventSource(((void*)0), TEXT(ACCEL_EVENT_SOURCE));
 ev_msgs[0] = msg;
 ev_msgs[1] = buf;
 ReportEvent(h,
            EVENTLOG_ERROR_TYPE,
            0,
            err,
            ((void*)0),
            2,
            0,
            ev_msgs,
            ((void*)0));
 DeregisterEventSource(h);

 zend_accel_error(type, "%s", msg);

 php_win32_error_msg_free(buf);
}
