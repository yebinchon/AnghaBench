
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_encoding ;


 char* estrdup (char*) ;
 char* estrndup (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *php_ap_getword(const zend_encoding *encoding, char **line, char stop)
{
 char *pos = *line, quote;
 char *res;

 while (*pos && *pos != stop) {
  if ((quote = *pos) == '"' || quote == '\'') {
   ++pos;
   while (*pos && *pos != quote) {
    if (*pos == '\\' && pos[1] && pos[1] == quote) {
     pos += 2;
    } else {
     ++pos;
    }
   }
   if (*pos) {
    ++pos;
   }
  } else ++pos;
 }
 if (*pos == '\0') {
  res = estrdup(*line);
  *line += strlen(*line);
  return res;
 }

 res = estrndup(*line, pos - *line);

 while (*pos == stop) {
  ++pos;
 }

 *line = pos;
 return res;
}
