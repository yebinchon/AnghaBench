
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int contentType; int content; } ;
typedef TYPE_1__ RPKCS7ContentInfo ;


 int r_asn1_free_binary (int ) ;
 int r_asn1_free_string (int ) ;

__attribute__((used)) static void r_pkcs7_free_contentinfo(RPKCS7ContentInfo *ci) {
 if (ci) {
  r_asn1_free_binary (ci->content);
  r_asn1_free_string (ci->contentType);

 }
}
