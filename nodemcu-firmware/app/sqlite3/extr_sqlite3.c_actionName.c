
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



 int OE_None ;



 int assert (int) ;

__attribute__((used)) static const char *actionName(u8 action){
  const char *zName;
  switch( action ){
    case 128: zName = "SET NULL"; break;
    case 129: zName = "SET DEFAULT"; break;
    case 131: zName = "CASCADE"; break;
    case 130: zName = "RESTRICT"; break;
    default: zName = "NO ACTION";
                      assert( action==OE_None ); break;
  }
  return zName;
}
