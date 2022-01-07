
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int NMHDR ;
typedef int HEADER_INFO ;
typedef int BOOL ;


 int HEADER_SendNotify (int const*,int ,int *) ;

__attribute__((used)) static BOOL
HEADER_SendSimpleNotify (const HEADER_INFO *infoPtr, UINT code)
{
    NMHDR nmhdr;
    return (BOOL)HEADER_SendNotify(infoPtr, code, &nmhdr);
}
