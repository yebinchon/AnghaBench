
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef long time_t ;
typedef int thetime ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_isdst; long tm_gmtoff; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ ASN1_UTCTIME ;


 scalar_t__ ASN1_STRING_get0_data (TYPE_1__*) ;
 scalar_t__ ASN1_STRING_length (TYPE_1__*) ;
 scalar_t__ ASN1_STRING_type (TYPE_1__*) ;
 int E_WARNING ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 scalar_t__ V_ASN1_UTCTIME ;
 int atoi (char*) ;
 int efree (char*) ;
 char* estrdup (char const*) ;
 int memset (struct tm*,int ,int) ;
 long mktime (struct tm*) ;
 int php_error_docref (int *,int ,char*,...) ;
 size_t strlen (char const*) ;
 scalar_t__ timezone ;

__attribute__((used)) static time_t php_openssl_asn1_time_to_time_t(ASN1_UTCTIME * timestr)
{







 time_t ret;
 struct tm thetime;
 char * strbuf;
 char * thestr;
 long gmadjust = 0;
 size_t timestr_len;

 if (ASN1_STRING_type(timestr) != V_ASN1_UTCTIME && ASN1_STRING_type(timestr) != V_ASN1_GENERALIZEDTIME) {
  php_error_docref(((void*)0), E_WARNING, "illegal ASN1 data type for timestamp");
  return (time_t)-1;
 }

 timestr_len = (size_t)ASN1_STRING_length(timestr);

 if (timestr_len != strlen((const char *)ASN1_STRING_get0_data(timestr))) {
  php_error_docref(((void*)0), E_WARNING, "illegal length in timestamp");
  return (time_t)-1;
 }

 if (timestr_len < 13 && timestr_len != 11) {
  php_error_docref(((void*)0), E_WARNING, "unable to parse time string %s correctly", timestr->data);
  return (time_t)-1;
 }

 if (ASN1_STRING_type(timestr) == V_ASN1_GENERALIZEDTIME && timestr_len < 15) {
  php_error_docref(((void*)0), E_WARNING, "unable to parse time string %s correctly", timestr->data);
  return (time_t)-1;
 }

 strbuf = estrdup((const char *)ASN1_STRING_get0_data(timestr));

 memset(&thetime, 0, sizeof(thetime));



 thestr = strbuf + timestr_len - 3;

 if (timestr_len == 11) {
  thetime.tm_sec = 0;
 } else {
  thetime.tm_sec = atoi(thestr);
  *thestr = '\0';
  thestr -= 2;
 }
 thetime.tm_min = atoi(thestr);
 *thestr = '\0';
 thestr -= 2;
 thetime.tm_hour = atoi(thestr);
 *thestr = '\0';
 thestr -= 2;
 thetime.tm_mday = atoi(thestr);
 *thestr = '\0';
 thestr -= 2;
 thetime.tm_mon = atoi(thestr)-1;

 *thestr = '\0';
 if( ASN1_STRING_type(timestr) == V_ASN1_UTCTIME ) {
  thestr -= 2;
  thetime.tm_year = atoi(thestr);

  if (thetime.tm_year < 68) {
   thetime.tm_year += 100;
  }
 } else if( ASN1_STRING_type(timestr) == V_ASN1_GENERALIZEDTIME ) {
  thestr -= 4;
  thetime.tm_year = atoi(thestr) - 1900;
 }


 thetime.tm_isdst = -1;
 ret = mktime(&thetime);
 gmadjust = -(thetime.tm_isdst ? (long)timezone - 3600 : (long)timezone);

 ret += gmadjust;

 efree(strbuf);

 return ret;
}
