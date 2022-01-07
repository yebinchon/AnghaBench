
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szNode ;
typedef int UINT ;
typedef int TCHAR ;
typedef int * LPTSTR ;


 int IDS_BCAST ;
 int IDS_HYBRID ;
 int IDS_MIXED ;
 int IDS_P2P ;
 int IDS_UNKNOWN ;
 int LoadStringAndOem (int ,int ,int *,int) ;
 int hInstance ;

LPTSTR GetNodeTypeName(UINT NodeType)
{
    static TCHAR szNode[14];

    switch (NodeType)
    {
        case 1:
            if (!LoadStringAndOem(hInstance, IDS_BCAST, szNode, sizeof(szNode)))
                return ((void*)0);
            break;

        case 2:
            if (!LoadStringAndOem(hInstance, IDS_P2P, szNode, sizeof(szNode)))
                return ((void*)0);
            break;

        case 4:
            if (!LoadStringAndOem(hInstance, IDS_MIXED, szNode, sizeof(szNode)))
                return ((void*)0);
            break;

        case 8:
            if (!LoadStringAndOem(hInstance, IDS_HYBRID, szNode, sizeof(szNode)))
                return ((void*)0);
            break;

        default :
            if (!LoadStringAndOem(hInstance, IDS_UNKNOWN, szNode, sizeof(szNode)))
                return ((void*)0);
            break;
    }

    return szNode;
}
