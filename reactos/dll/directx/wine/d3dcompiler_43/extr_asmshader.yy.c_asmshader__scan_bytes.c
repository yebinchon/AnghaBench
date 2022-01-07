
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ yy_size_t ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_is_our_buffer; } ;


 char YY_END_OF_BUFFER_CHAR ;
 int YY_FATAL_ERROR (char*) ;
 TYPE_1__* yy_scan_buffer (char*,scalar_t__) ;
 scalar_t__ yyalloc (scalar_t__) ;

YY_BUFFER_STATE yy_scan_bytes (const char * yybytes, int _yybytes_len )
{
 YY_BUFFER_STATE b;
 char *buf;
 yy_size_t n;
 int i;


 n = (yy_size_t) (_yybytes_len + 2);
 buf = (char *) yyalloc( n );
 if ( ! buf )
  YY_FATAL_ERROR( "out of dynamic memory in yy_scan_bytes()" );

 for ( i = 0; i < _yybytes_len; ++i )
  buf[i] = yybytes[i];

 buf[_yybytes_len] = buf[_yybytes_len+1] = YY_END_OF_BUFFER_CHAR;

 b = yy_scan_buffer( buf, n );
 if ( ! b )
  YY_FATAL_ERROR( "bad buffer in yy_scan_bytes()" );




 b->yy_is_our_buffer = 1;

 return b;
}
