
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szIntType ;
typedef int UINT ;
typedef int TCHAR ;
typedef int * LPTSTR ;


 int IDS_ETH ;
 int IDS_FDDI ;
 int IDS_LOOP ;
 int IDS_OTHER ;
 int IDS_PPP ;
 int IDS_SLIP ;
 int IDS_TOKEN ;
 int IDS_UNKNOWN ;
 int LoadStringAndOem (int ,int ,int *,int) ;







 int hInstance ;

LPTSTR GetInterfaceTypeName(UINT InterfaceType)
{
    static TCHAR szIntType[25];

    switch (InterfaceType)
    {
        case 131:
            if (!LoadStringAndOem(hInstance, IDS_OTHER, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 134:
            if (!LoadStringAndOem(hInstance, IDS_ETH, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 128:
            if (!LoadStringAndOem(hInstance, IDS_TOKEN, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 133:
            if (!LoadStringAndOem(hInstance, IDS_FDDI, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 130:
            if (!LoadStringAndOem(hInstance, IDS_PPP, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 132:
            if (!LoadStringAndOem(hInstance, IDS_LOOP, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        case 129:
            if (!LoadStringAndOem(hInstance, IDS_SLIP, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;

        default:
            if (!LoadStringAndOem(hInstance, IDS_UNKNOWN, szIntType, sizeof(szIntType)))
                return ((void*)0);
            break;
    }

    return szIntType;
}
