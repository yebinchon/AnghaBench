
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;






 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void lengthFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  switch( sqlite3_value_type(argv[0]) ){
    case 131:
    case 129:
    case 130: {
      sqlite3_result_int(context, sqlite3_value_bytes(argv[0]));
      break;
    }
    case 128: {
      const unsigned char *z = sqlite3_value_text(argv[0]);
      const unsigned char *z0;
      unsigned char c;
      if( z==0 ) return;
      z0 = z;
      while( (c = *z)!=0 ){
        z++;
        if( c>=0xc0 ){
          while( (*z & 0xc0)==0x80 ){ z++; z0++; }
        }
      }
      sqlite3_result_int(context, (int)(z-z0));
      break;
    }
    default: {
      sqlite3_result_null(context);
      break;
    }
  }
}
