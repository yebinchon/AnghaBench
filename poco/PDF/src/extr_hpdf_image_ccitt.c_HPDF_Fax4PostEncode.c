
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _HPDF_CCITT_Data {int dummy; } ;


 int EOL ;
 int HPDF_CCITT_FlushData (struct _HPDF_CCITT_Data*) ;
 int HPDF_Fax3PutBits (struct _HPDF_CCITT_Data*,int ,int) ;

__attribute__((used)) static void
HPDF_Fax4PostEncode(struct _HPDF_CCITT_Data *pData)
{



 HPDF_Fax3PutBits(pData, EOL, 12);
 HPDF_Fax3PutBits(pData, EOL, 12);



 HPDF_CCITT_FlushData(pData);
}
