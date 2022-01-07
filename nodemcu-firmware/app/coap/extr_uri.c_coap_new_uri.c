
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_uri_t ;


 char* URI_DATA (unsigned char*) ;
 scalar_t__ coap_split_uri (char*,unsigned int,int *) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (char*,unsigned char const*,unsigned int) ;

coap_uri_t * coap_new_uri(const unsigned char *uri, unsigned int length) {
  unsigned char *result;

  result = (unsigned char *)malloc(length + 1 + sizeof(coap_uri_t));

  if (!result)
    return ((void*)0);

  memcpy(URI_DATA(result), uri, length);
  URI_DATA(result)[length] = '\0';

  if (coap_split_uri(URI_DATA(result), length, (coap_uri_t *)result) < 0) {
    free(result);
    return ((void*)0);
  }
  return (coap_uri_t *)result;
}
