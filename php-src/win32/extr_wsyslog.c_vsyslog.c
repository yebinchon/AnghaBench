
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef char* LPTSTR ;
typedef int DWORD ;


 unsigned short EVENTLOG_ERROR_TYPE ;
 unsigned short EVENTLOG_INFORMATION_TYPE ;
 unsigned short EVENTLOG_WARNING_TYPE ;
 scalar_t__ INVALID_HANDLE_VALUE ;


 int LOG_PID ;
 int LOG_SYSLOG ;
 int PHP_SYSLOG_ERROR_TYPE ;
 int PHP_SYSLOG_INFO_TYPE ;
 int PHP_SYSLOG_WARNING_TYPE ;
 char* PW32G (int ) ;
 int ReportEventA (char*,unsigned short,unsigned short,int ,int *,int,int ,char**,int *) ;
 int ReportEventW (char*,unsigned short,unsigned short,int ,int *,int,int ,int **,int *) ;
 int efree (char*) ;
 int free (int *) ;
 int log_header ;
 int log_source ;
 int openlog (char*,int ,int ) ;
 int * php_win32_cp_any_to_w (char*) ;
 int vspprintf (char**,int ,char const*,int ) ;

void vsyslog(int priority, const char *message, va_list args)
{
 LPTSTR strs[2];
 unsigned short etype;
 char *tmp = ((void*)0);
 DWORD evid;
 wchar_t *strsw[2];


 if (INVALID_HANDLE_VALUE == PW32G(log_source))
  openlog("php", LOG_PID, LOG_SYSLOG);

 switch (priority) {
  case 129:
   etype = EVENTLOG_ERROR_TYPE;
   evid = PHP_SYSLOG_ERROR_TYPE;
   break;
  case 128:
   etype = EVENTLOG_INFORMATION_TYPE;
   evid = PHP_SYSLOG_INFO_TYPE;
   break;
  default:
   etype = EVENTLOG_WARNING_TYPE;
   evid = PHP_SYSLOG_WARNING_TYPE;
 }

 vspprintf(&tmp, 0, message, args);

 strsw[0] = php_win32_cp_any_to_w(PW32G(log_header));
 strsw[1] = php_win32_cp_any_to_w(tmp);


 if (strsw[0] && strsw[1]) {
  ReportEventW(PW32G(log_source), etype, (unsigned short) priority, evid, ((void*)0), 2, 0, strsw, ((void*)0));
  free(strsw[0]);
  free(strsw[1]);
  efree(tmp);
  return;
 }

 free(strsw[0]);
 free(strsw[1]);

 strs[0] = PW32G(log_header);
 strs[1] = tmp;

 ReportEventA(PW32G(log_source), etype, (unsigned short) priority, evid, ((void*)0), 2, 0, strs, ((void*)0));
 efree(tmp);
}
