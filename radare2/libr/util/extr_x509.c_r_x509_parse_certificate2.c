
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int RX509Certificate ;
typedef int RASN1Object ;


 int * r_asn1_create_object (int const*,int ,int const*) ;
 int * r_x509_parse_certificate (int *) ;

RX509Certificate *r_x509_parse_certificate2 (const ut8 *buffer, ut32 length) {
 RX509Certificate *certificate;
 RASN1Object *object;
 if (!buffer || !length) {
  return ((void*)0);
 }
 object = r_asn1_create_object (buffer, length, buffer);
 certificate = r_x509_parse_certificate (object);

 return certificate;
}
