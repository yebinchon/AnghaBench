
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 int FAILURE ;
 int U_ILLEGAL_ARGUMENT_ERROR ;
 int intl_error_reset (int *) ;
 int intl_error_set (int *,int ,char*,int ) ;
 int smart_str_free (int *) ;

__attribute__((used)) static int handleAppendResult( int result, smart_str* loc_name)
{
 intl_error_reset( ((void*)0) );
 if( result == FAILURE) {
  intl_error_set( ((void*)0), U_ILLEGAL_ARGUMENT_ERROR,
    "locale_compose: parameter array element is not a string", 0 );
  smart_str_free(loc_name);
  return 0;
 }
 return 1;
}
