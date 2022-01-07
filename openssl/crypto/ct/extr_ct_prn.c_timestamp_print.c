
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
typedef int genstr ;
typedef int BIO ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_adj (int *,int ,int,int) ;
 int ASN1_GENERALIZEDTIME_free (int *) ;
 int * ASN1_GENERALIZEDTIME_new () ;
 int ASN1_GENERALIZEDTIME_print (int *,int *) ;
 scalar_t__ ASN1_GENERALIZEDTIME_set_string (int *,char*) ;
 int ASN1_STRING_get0_data (int *) ;
 int BIO_snprintf (char*,int,char*,int ,unsigned int) ;

__attribute__((used)) static void timestamp_print(uint64_t timestamp, BIO *out)
{
    ASN1_GENERALIZEDTIME *gen = ASN1_GENERALIZEDTIME_new();
    char genstr[20];

    if (gen == ((void*)0))
        return;
    ASN1_GENERALIZEDTIME_adj(gen, (time_t)0,
                             (int)(timestamp / 86400000),
                             (timestamp % 86400000) / 1000);




    BIO_snprintf(genstr, sizeof(genstr), "%.14s.%03dZ",
                 ASN1_STRING_get0_data(gen), (unsigned int)(timestamp % 1000));
    if (ASN1_GENERALIZEDTIME_set_string(gen, genstr))
        ASN1_GENERALIZEDTIME_print(out, gen);
    ASN1_GENERALIZEDTIME_free(gen);
}
