
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RX509Certificate ;
typedef int RStrBuf ;
typedef int RCore ;
typedef int RCMS ;
typedef int RASN1Object ;


 int asn1_setformat (int) ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_pF ;
 int * r_asn1_create_object (int const*,int,int const*) ;
 int r_asn1_free_object (int *) ;
 char* r_asn1_to_string (int *,int ,int *) ;
 int r_cons_printf (char*,char*) ;
 int r_core_cmd_help (int *,int ) ;
 char* r_pkcs7_cms_to_string (int *) ;
 int r_pkcs7_free_cms (int *) ;
 int * r_pkcs7_parse_cms (int const*,int) ;
 char* r_protobuf_decode (int const*,int,int) ;
 char* r_strbuf_drain (int *) ;
 int * r_strbuf_new (char*) ;
 int r_x509_certificate_dump (int *,int *,int *) ;
 int r_x509_free_certificate (int *) ;
 int * r_x509_parse_certificate (int *) ;

__attribute__((used)) static void cmd_print_fromage(RCore *core, const char *input, const ut8* data, int size) {
 switch (*input) {
 case 'a':
  {
   asn1_setformat (input[1] != 'q');
   RASN1Object *asn1 = r_asn1_create_object (data, size, data);
   if (asn1) {
    char *res = r_asn1_to_string (asn1, 0, ((void*)0));
    r_asn1_free_object (asn1);
    if (res) {
     r_cons_printf ("%s\n", res);
     free (res);
    }
   } else {
    eprintf ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
   }
  }
  break;
 case 'x':
  {
   RX509Certificate* x509 = r_x509_parse_certificate (r_asn1_create_object (data, size, data));
   if (x509) {
    RStrBuf *sb = r_strbuf_new ("");
    r_x509_certificate_dump (x509, ((void*)0), sb);
    char *res = r_strbuf_drain (sb);
    if (res) {
     r_cons_printf ("%s\n", res);
     free (res);
    }
    r_x509_free_certificate (x509);
   } else {
    eprintf ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
   }
  }
  break;
 case 'p':
  {
   RCMS *cms = r_pkcs7_parse_cms (data, size);
   if (cms) {
    char *res = r_pkcs7_cms_to_string (cms);
    if (res) {
     r_cons_printf ("%s\n", res);
     free (res);
    }
    r_pkcs7_free_cms (cms);
   } else {
    eprintf ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
   }
  }
  break;
 case 'b':
  {
   char *s = r_protobuf_decode(data, size, input[1] == 'v');
   if (s) {
    r_cons_printf ("%s", s);
    free (s);
   }
  }
  break;
 default:
 case '?':
  r_core_cmd_help (core, help_msg_pF);
  break;
 }
}
