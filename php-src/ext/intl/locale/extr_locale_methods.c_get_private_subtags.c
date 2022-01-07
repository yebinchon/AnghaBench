
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_off_t ;


 int getSingletonPos (char const*) ;
 size_t strlen (char const*) ;
 int * zend_string_init (char const*,size_t,int ) ;

__attribute__((used)) static zend_string* get_private_subtags(const char* loc_name)
{
 zend_string* result = ((void*)0);
 size_t len = 0;
 const char* mod_loc_name =((void*)0);

 if( loc_name && (len = strlen(loc_name)) > 0 ){
  zend_off_t singletonPos = 0;
  mod_loc_name = loc_name ;
  while( (singletonPos = getSingletonPos(mod_loc_name)) > -1){
   if( (*(mod_loc_name+singletonPos)=='x') || (*(mod_loc_name+singletonPos)=='X') ){

    if( singletonPos + 2 == len){

    }
    else{

     result = zend_string_init(mod_loc_name + singletonPos+2 , (len -( singletonPos +2) ), 0);
    }
    break;
   }
   else{
    if((size_t)(singletonPos + 1) >= len){

     break;
    } else {

     mod_loc_name = mod_loc_name + singletonPos +1;
     len = strlen(mod_loc_name);
    }
   }
  }
 }

 return result;
}
