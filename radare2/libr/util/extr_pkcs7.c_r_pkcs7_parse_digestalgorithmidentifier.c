
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_6__ {scalar_t__ length; int * objects; } ;
struct TYPE_8__ {TYPE_1__ list; } ;
struct TYPE_7__ {size_t length; int ** elements; } ;
typedef int RX509AlgorithmIdentifier ;
typedef TYPE_2__ RPKCS7DigestAlgorithmIdentifiers ;
typedef TYPE_3__ RASN1Object ;


 scalar_t__ calloc (scalar_t__,int) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 int r_x509_parse_algorithmidentifier (int *,int ) ;

__attribute__((used)) static bool r_pkcs7_parse_digestalgorithmidentifier(RPKCS7DigestAlgorithmIdentifiers *dai, RASN1Object *object) {
 ut32 i;
 if (!dai || !object) {
  return 0;
 }
 if (object->list.length > 0) {
  dai->elements = (RX509AlgorithmIdentifier **)calloc (object->list.length, sizeof (RX509AlgorithmIdentifier *));
  if (!dai->elements) {
   return 0;
  }
  dai->length = object->list.length;
  for (i = 0; i < dai->length; ++i) {


   dai->elements[i] = (RX509AlgorithmIdentifier *)malloc (sizeof (RX509AlgorithmIdentifier));


   if (dai->elements[i]) {

    memset (dai->elements[i], 0, sizeof (RX509AlgorithmIdentifier));
    r_x509_parse_algorithmidentifier (dai->elements[i], object->list.objects[i]);
   }
  }
 }
 return 1;
}
