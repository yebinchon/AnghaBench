
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_long ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_1__ smart_str ;
struct TYPE_11__ {scalar_t__ line; scalar_t__ offset; scalar_t__* preContext; scalar_t__* postContext; } ;
typedef TYPE_2__ UParseError ;
typedef int UErrorCode ;


 int assert (int ) ;
 int * intl_convert_utf16_to_utf8 (scalar_t__*,int,int *) ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_append (TYPE_1__*,int *) ;
 int smart_str_append_long (TYPE_1__*,int ) ;
 int smart_str_appends (TYPE_1__*,char*) ;
 int smart_str_free (TYPE_1__*) ;
 int zend_string_release_ex (int *,int ) ;

smart_str intl_parse_error_to_string( UParseError* pe )
{
 smart_str ret = {0};
 zend_string *u8str;
 UErrorCode status;
 int any = 0;

 assert( pe != ((void*)0) );

 smart_str_appends( &ret, "parse error " );
 if( pe->line > 0 )
 {
  smart_str_appends( &ret, "on line " );
  smart_str_append_long( &ret, (zend_long ) pe->line );
  any = 1;
 }
 if( pe->offset >= 0 ) {
  if( any )
   smart_str_appends( &ret, ", " );
  else
   smart_str_appends( &ret, "at " );

  smart_str_appends( &ret, "offset " );
  smart_str_append_long( &ret, (zend_long ) pe->offset );
  any = 1;
 }

 if (pe->preContext[0] != 0 ) {
  if( any )
   smart_str_appends( &ret, ", " );

  smart_str_appends( &ret, "after \"" );
  u8str = intl_convert_utf16_to_utf8(pe->preContext, -1, &status );
  if( !u8str )
  {
   smart_str_appends( &ret, "(could not convert parser error pre-context to UTF-8)" );
  }
  else {
   smart_str_append( &ret, u8str );
   zend_string_release_ex( u8str, 0 );
  }
  smart_str_appends( &ret, "\"" );
  any = 1;
 }

 if( pe->postContext[0] != 0 )
 {
  if( any )
   smart_str_appends( &ret, ", " );

  smart_str_appends( &ret, "before or at \"" );
  u8str = intl_convert_utf16_to_utf8(pe->postContext, -1, &status );
  if( !u8str )
  {
   smart_str_appends( &ret, "(could not convert parser error post-context to UTF-8)" );
  }
  else
  {
   smart_str_append( &ret, u8str );
   zend_string_release_ex( u8str, 0 );
  }
  smart_str_appends( &ret, "\"" );
  any = 1;
 }

 if( !any )
 {
  smart_str_free( &ret );
  smart_str_appends( &ret, "no parse error" );
 }

 smart_str_0( &ret );
 return ret;
}
