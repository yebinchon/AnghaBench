
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int X509_NAME ;
typedef int Datum ;
typedef int ASN1_STRING ;


 int ASN1_STRING_to_text (int *) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int NID_undef ;
 int OBJ_txt2nid (char*) ;
 int * X509_NAME_ENTRY_get_data (int ) ;
 int X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_NID (int *,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int pfree (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Datum
X509_NAME_field_to_text(X509_NAME *name, text *fieldName)
{
 char *string_fieldname;
 int nid,
    index;
 ASN1_STRING *data;

 string_fieldname = text_to_cstring(fieldName);
 nid = OBJ_txt2nid(string_fieldname);
 if (nid == NID_undef)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid X.509 field name: \"%s\"",
      string_fieldname)));
 pfree(string_fieldname);
 index = X509_NAME_get_index_by_NID(name, nid, -1);
 if (index < 0)
  return (Datum) 0;
 data = X509_NAME_ENTRY_get_data(X509_NAME_get_entry(name, index));
 return ASN1_STRING_to_text(data);
}
