
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;
typedef int timelib_tzdb ;


 int TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE ;
 int TIMELIB_ERROR_NO_SUCH_TIMEZONE ;
 int TIMELIB_ERROR_UNSUPPORTED_VERSION ;
 unsigned int TIMELIB_TZINFO_PHP ;
 int read_32bit_header (unsigned char const**,int *) ;
 int read_64bit_header (unsigned char const**,int *) ;
 int read_64bit_transitions (unsigned char const**,int *) ;
 int read_64bit_types (unsigned char const**,int *) ;
 int read_location (unsigned char const**,int *) ;
 int read_preamble (unsigned char const**,int *,unsigned int*) ;
 scalar_t__ seek_to_tz_position (unsigned char const**,char*,int const*) ;
 int set_default_location_and_comments (unsigned char const**,int *) ;
 int skip_32bit_transitions (unsigned char const**,int *) ;
 int skip_32bit_types (unsigned char const**,int *) ;
 int skip_64bit_preamble (unsigned char const**,int *) ;
 int skip_posix_string (unsigned char const**,int *) ;
 int * timelib_tzinfo_ctor (char*) ;
 int timelib_tzinfo_dtor (int *) ;

timelib_tzinfo *timelib_parse_tzfile(char *timezone, const timelib_tzdb *tzdb, int *error_code)
{
 const unsigned char *tzf;
 timelib_tzinfo *tmp;
 int version;
 int transitions_result, types_result;
 unsigned int type;

 if (seek_to_tz_position(&tzf, timezone, tzdb)) {
  tmp = timelib_tzinfo_ctor(timezone);

  version = read_preamble(&tzf, tmp, &type);
  if (version < 2 || version > 3) {
   *error_code = TIMELIB_ERROR_UNSUPPORTED_VERSION;
   timelib_tzinfo_dtor(tmp);
   return ((void*)0);
  }


  read_32bit_header(&tzf, tmp);
  skip_32bit_transitions(&tzf, tmp);
  skip_32bit_types(&tzf, tmp);

  if (!skip_64bit_preamble(&tzf, tmp)) {

   *error_code = TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE;
   timelib_tzinfo_dtor(tmp);
   return ((void*)0);
  }
  read_64bit_header(&tzf, tmp);
  if ((transitions_result = read_64bit_transitions(&tzf, tmp)) != 0) {

   *error_code = transitions_result;
   timelib_tzinfo_dtor(tmp);
   return ((void*)0);
  }
  if ((types_result = read_64bit_types(&tzf, tmp)) != 0) {
   *error_code = types_result;
   timelib_tzinfo_dtor(tmp);
   return ((void*)0);
  }
  skip_posix_string(&tzf, tmp);

  if (type == TIMELIB_TZINFO_PHP) {
   read_location(&tzf, tmp);
  } else {
   set_default_location_and_comments(&tzf, tmp);
  }
 } else {
  *error_code = TIMELIB_ERROR_NO_SUCH_TIMEZONE;
  tmp = ((void*)0);
 }

 return tmp;
}
