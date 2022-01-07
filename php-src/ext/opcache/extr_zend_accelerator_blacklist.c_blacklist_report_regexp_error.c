
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCEL_LOG_ERROR ;
 int zend_accel_error (int ,char*,int,char const*) ;

__attribute__((used)) static void blacklist_report_regexp_error(const char *pcre_error, int pcre_error_offset)
{
 zend_accel_error(ACCEL_LOG_ERROR, "Blacklist compilation failed (offset: %d), %s\n", pcre_error_offset, pcre_error);
}
