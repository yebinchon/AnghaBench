
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef scalar_t__ HPDF_Outline ;


 scalar_t__ HPDF_Outline_GetFirst (scalar_t__) ;
 scalar_t__ HPDF_Outline_GetNext (scalar_t__) ;
 scalar_t__ HPDF_Outline_GetOpened (scalar_t__) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_UINT
CountChild (HPDF_Outline outline)
{
    HPDF_Outline child = HPDF_Outline_GetFirst (outline);
    HPDF_UINT count = 0;

    HPDF_PTRACE((" CountChild\n"));

    while (child) {
        count++;

        if (HPDF_Outline_GetOpened (child))
            count += CountChild (child);

        child = HPDF_Outline_GetNext (child);
    }

    return count;
}
