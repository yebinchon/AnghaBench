
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;
typedef int ASN1_STRING ;


 unsigned char* ASN1_STRING_data (int *) ;
 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int libpq_gettext (char*) ;
 int pq_verify_peer_name_matches_certificate_name (TYPE_1__*,char const*,int,char**) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static int
openssl_verify_peer_name_matches_certificate_name(PGconn *conn, ASN1_STRING *name_entry,
              char **store_name)
{
 int len;
 const unsigned char *namedata;


 if (name_entry == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("SSL certificate's name entry is missing\n"));
  return -1;
 }







 namedata = ASN1_STRING_data(name_entry);

 len = ASN1_STRING_length(name_entry);


 return pq_verify_peer_name_matches_certificate_name(conn, (const char *) namedata, len, store_name);
}
