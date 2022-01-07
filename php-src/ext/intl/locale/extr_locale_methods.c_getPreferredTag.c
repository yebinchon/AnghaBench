
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zend_off_t ;


 int * LOC_GRANDFATHERED ;
 int * LOC_PREFERRED_GRANDFATHERED ;
 size_t LOC_PREFERRED_GRANDFATHERED_LEN ;
 char* estrdup (int ) ;
 size_t findOffset (int *,char const*) ;

__attribute__((used)) static char* getPreferredTag(const char* gf_tag)
{
 char* result = ((void*)0);
 zend_off_t grOffset = 0;

 grOffset = findOffset( LOC_GRANDFATHERED ,gf_tag);
 if(grOffset < 0) {
  return ((void*)0);
 }
 if( grOffset < LOC_PREFERRED_GRANDFATHERED_LEN ){

  result = estrdup( LOC_PREFERRED_GRANDFATHERED[grOffset] );
 } else {

  result = estrdup( LOC_GRANDFATHERED[grOffset] );
 }
 return result;
}
