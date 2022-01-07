
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_off_t ;


 scalar_t__ isIDSeparator (char) ;

__attribute__((used)) static zend_off_t getStrrtokenPos(char* str, zend_off_t savedPos)
{
 zend_off_t result =-1;
 zend_off_t i;

 for(i=savedPos-1; i>=0; i--) {
  if(isIDSeparator(*(str+i)) ){

   if(i>=2 && isIDSeparator(*(str+i-2)) ){

    result = i-2;
   } else {
    result = i;
   }
   break;
  }
 }
 if(result < 1){

  result =-1;
 }
 return result;
}
