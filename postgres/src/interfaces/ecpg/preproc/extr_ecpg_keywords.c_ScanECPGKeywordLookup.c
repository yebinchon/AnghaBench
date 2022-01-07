
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ECPGScanKeywordTokens ;
 int* SQLScanKeywordTokens ;
 int ScanECPGKeywords ;
 int ScanKeywordLookup (char const*,int *) ;
 int ScanKeywords ;

int
ScanECPGKeywordLookup(const char *text)
{
 int kwnum;


 kwnum = ScanKeywordLookup(text, &ScanKeywords);
 if (kwnum >= 0)
  return SQLScanKeywordTokens[kwnum];


 kwnum = ScanKeywordLookup(text, &ScanECPGKeywords);
 if (kwnum >= 0)
  return ECPGScanKeywordTokens[kwnum];

 return -1;
}
