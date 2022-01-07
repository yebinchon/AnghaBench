
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;
typedef int timelib_tzdb ;


 int ALLOC_HASHTABLE (int ) ;
 int DATEG (int ) ;
 int _php_date_tzinfo_dtor ;
 int strlen (char*) ;
 int * timelib_parse_tzfile (char*,int const*,int*) ;
 int tzcache ;
 int zend_hash_init (int ,int,int *,int ,int ) ;
 int zend_hash_str_add_ptr (int ,char*,int ,int *) ;
 int * zend_hash_str_find_ptr (int ,char*,int ) ;

__attribute__((used)) static timelib_tzinfo *php_date_parse_tzfile(char *formal_tzname, const timelib_tzdb *tzdb)
{
 timelib_tzinfo *tzi;
 int dummy_error_code;

 if(!DATEG(tzcache)) {
  ALLOC_HASHTABLE(DATEG(tzcache));
  zend_hash_init(DATEG(tzcache), 4, ((void*)0), _php_date_tzinfo_dtor, 0);
 }

 if ((tzi = zend_hash_str_find_ptr(DATEG(tzcache), formal_tzname, strlen(formal_tzname))) != ((void*)0)) {
  return tzi;
 }

 tzi = timelib_parse_tzfile(formal_tzname, tzdb, &dummy_error_code);
 if (tzi) {
  zend_hash_str_add_ptr(DATEG(tzcache), formal_tzname, strlen(formal_tzname), tzi);
 }
 return tzi;
}
