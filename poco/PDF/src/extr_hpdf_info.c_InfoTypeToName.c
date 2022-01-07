
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t HPDF_UINT ;
typedef int HPDF_InfoType ;


 char const** HPDF_INFO_ATTR_NAMES ;

__attribute__((used)) static const char*
InfoTypeToName (HPDF_InfoType type)
{
    HPDF_UINT idx = (HPDF_UINT)type;

    return HPDF_INFO_ATTR_NAMES[idx];
}
