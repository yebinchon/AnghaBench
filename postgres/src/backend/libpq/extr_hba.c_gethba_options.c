
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ auth_method; char* krb_realm; char* usermap; scalar_t__ clientcert; char* pamservice; char* ldapserver; char* ldapport; char* ldapprefix; char* ldapsuffix; char* ldapbasedn; char* ldapbinddn; char* ldapbindpasswd; char* ldapsearchattribute; char* ldapsearchfilter; char* ldapscope; char* radiusservers_s; char* radiussecrets_s; char* radiusidentifiers_s; char* radiusports_s; scalar_t__ ldaptls; scalar_t__ include_realm; } ;
typedef TYPE_1__ HbaLine ;
typedef int Datum ;
typedef int ArrayType ;


 int Assert (int) ;
 int CStringGetTextDatum (char*) ;
 int MAX_HBA_OPTIONS ;
 int TEXTOID ;
 scalar_t__ clientCertCA ;
 scalar_t__ clientCertOff ;
 int * construct_array (int *,int,int ,int,int,char) ;
 char* psprintf (char*,char*) ;
 scalar_t__ uaGSS ;
 scalar_t__ uaLDAP ;
 scalar_t__ uaRADIUS ;
 scalar_t__ uaSSPI ;

__attribute__((used)) static ArrayType *
gethba_options(HbaLine *hba)
{
 int noptions;
 Datum options[MAX_HBA_OPTIONS];

 noptions = 0;

 if (hba->auth_method == uaGSS || hba->auth_method == uaSSPI)
 {
  if (hba->include_realm)
   options[noptions++] =
    CStringGetTextDatum("include_realm=true");

  if (hba->krb_realm)
   options[noptions++] =
    CStringGetTextDatum(psprintf("krb_realm=%s", hba->krb_realm));
 }

 if (hba->usermap)
  options[noptions++] =
   CStringGetTextDatum(psprintf("map=%s", hba->usermap));

 if (hba->clientcert != clientCertOff)
  options[noptions++] =
   CStringGetTextDatum(psprintf("clientcert=%s", (hba->clientcert == clientCertCA) ? "verify-ca" : "verify-full"));

 if (hba->pamservice)
  options[noptions++] =
   CStringGetTextDatum(psprintf("pamservice=%s", hba->pamservice));

 if (hba->auth_method == uaLDAP)
 {
  if (hba->ldapserver)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapserver=%s", hba->ldapserver));

  if (hba->ldapport)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapport=%d", hba->ldapport));

  if (hba->ldaptls)
   options[noptions++] =
    CStringGetTextDatum("ldaptls=true");

  if (hba->ldapprefix)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapprefix=%s", hba->ldapprefix));

  if (hba->ldapsuffix)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapsuffix=%s", hba->ldapsuffix));

  if (hba->ldapbasedn)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapbasedn=%s", hba->ldapbasedn));

  if (hba->ldapbinddn)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapbinddn=%s", hba->ldapbinddn));

  if (hba->ldapbindpasswd)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapbindpasswd=%s",
            hba->ldapbindpasswd));

  if (hba->ldapsearchattribute)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapsearchattribute=%s",
            hba->ldapsearchattribute));

  if (hba->ldapsearchfilter)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapsearchfilter=%s",
            hba->ldapsearchfilter));

  if (hba->ldapscope)
   options[noptions++] =
    CStringGetTextDatum(psprintf("ldapscope=%d", hba->ldapscope));
 }

 if (hba->auth_method == uaRADIUS)
 {
  if (hba->radiusservers_s)
   options[noptions++] =
    CStringGetTextDatum(psprintf("radiusservers=%s", hba->radiusservers_s));

  if (hba->radiussecrets_s)
   options[noptions++] =
    CStringGetTextDatum(psprintf("radiussecrets=%s", hba->radiussecrets_s));

  if (hba->radiusidentifiers_s)
   options[noptions++] =
    CStringGetTextDatum(psprintf("radiusidentifiers=%s", hba->radiusidentifiers_s));

  if (hba->radiusports_s)
   options[noptions++] =
    CStringGetTextDatum(psprintf("radiusports=%s", hba->radiusports_s));
 }


 Assert(noptions <= MAX_HBA_OPTIONS);

 if (noptions > 0)
  return construct_array(options, noptions, TEXTOID, -1, 0, 'i');
 else
  return ((void*)0);
}
