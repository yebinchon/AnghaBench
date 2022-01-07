
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int ptrdiff_t ;


 int * memchr (char const*,char,size_t) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static zend_bool php_openssl_matches_wildcard_name(const char *subjectname, const char *certname)
{
 char *wildcard = ((void*)0);
 ptrdiff_t prefix_len;
 size_t suffix_len, subject_len;

 if (strcasecmp(subjectname, certname) == 0) {
  return 1;
 }


 if (!(wildcard = strchr(certname, '*')) || memchr(certname, '.', wildcard - certname)) {
  return 0;
 }


 prefix_len = wildcard - certname;
 if (prefix_len && strncasecmp(subjectname, certname, prefix_len) != 0) {
  return 0;
 }

 suffix_len = strlen(wildcard + 1);
 subject_len = strlen(subjectname);
 if (suffix_len <= subject_len) {



  return strcasecmp(wildcard + 1, subjectname + subject_len - suffix_len) == 0 &&
   memchr(subjectname + prefix_len, '.', subject_len - suffix_len - prefix_len) == ((void*)0);
 }

 return 0;
}
