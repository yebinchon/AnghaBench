
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_off_t ;


 scalar_t__ isIDSeparator (char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static zend_off_t getSingletonPos(const char* str)
{
 zend_off_t result =-1;
 size_t len = 0;

 if( str && ((len=strlen(str))>0) ){
  zend_off_t i = 0;
  for( i=0; (size_t)i < len ; i++){
   if( isIDSeparator(*(str+i)) ){
    if( i==1){

     result =0;
     break;
    } else {

     if( isIDSeparator(*(str+i+2)) ){

      result = i+1;
      break;
     }
    }
   }
  }

 }
 return result;
}
