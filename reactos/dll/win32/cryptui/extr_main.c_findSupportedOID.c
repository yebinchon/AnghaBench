
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OIDToString {int oid; } ;
typedef int LPCSTR ;


 int ARRAY_SIZE (struct OIDToString*) ;
 struct OIDToString* oidMap ;
 int strcmp (int ,int ) ;

__attribute__((used)) static struct OIDToString *findSupportedOID(LPCSTR oid)
{
    int indexHigh = ARRAY_SIZE(oidMap) - 1, indexLow = 0;

    while (indexLow <= indexHigh)
    {
        int cmp, i = (indexLow + indexHigh) / 2;
        if (!(cmp = strcmp(oid, oidMap[i].oid)))
            return &oidMap[i];
        if (cmp > 0)
            indexLow = i + 1;
        else
            indexHigh = i - 1;
    }
    return ((void*)0);
}
