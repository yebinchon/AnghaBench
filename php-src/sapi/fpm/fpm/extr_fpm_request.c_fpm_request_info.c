
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct fpm_scoreboard_proc_s {size_t content_length; int script_filename; int auth_user; int query_string; int request_method; int request_uri; struct timeval tv; int request_stage; } ;


 int FPM_REQUEST_INFO ;
 int ZLOG_WARNING ;
 int fpm_clock_get (struct timeval*) ;
 char* fpm_php_auth_user () ;
 size_t fpm_php_content_length () ;
 char* fpm_php_query_string () ;
 char* fpm_php_request_method () ;
 char* fpm_php_request_uri () ;
 char* fpm_php_script_filename () ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_acquire (int *,int,int ) ;
 int fpm_scoreboard_proc_release (struct fpm_scoreboard_proc_s*) ;
 int strlcpy (int ,char*,int) ;
 int zlog (int ,char*) ;

void fpm_request_info()
{
 struct fpm_scoreboard_proc_s *proc;
 char *request_uri = fpm_php_request_uri();
 char *request_method = fpm_php_request_method();
 char *script_filename = fpm_php_script_filename();
 char *query_string = fpm_php_query_string();
 char *auth_user = fpm_php_auth_user();
 size_t content_length = fpm_php_content_length();
 struct timeval now;

 fpm_clock_get(&now);

 proc = fpm_scoreboard_proc_acquire(((void*)0), -1, 0);
 if (proc == ((void*)0)) {
  zlog(ZLOG_WARNING, "failed to acquire proc scoreboard");
  return;
 }

 proc->request_stage = FPM_REQUEST_INFO;
 proc->tv = now;

 if (request_uri) {
  strlcpy(proc->request_uri, request_uri, sizeof(proc->request_uri));
 }

 if (request_method) {
  strlcpy(proc->request_method, request_method, sizeof(proc->request_method));
 }

 if (query_string) {
  strlcpy(proc->query_string, query_string, sizeof(proc->query_string));
 }

 if (auth_user) {
  strlcpy(proc->auth_user, auth_user, sizeof(proc->auth_user));
 }

 proc->content_length = content_length;



 if (script_filename) {
  strlcpy(proc->script_filename, script_filename, sizeof(proc->script_filename));
 }

 fpm_scoreboard_proc_release(proc);
}
