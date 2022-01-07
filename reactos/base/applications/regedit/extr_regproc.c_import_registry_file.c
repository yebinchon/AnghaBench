
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int fread (int*,int,int,int *) ;
 int processRegLinesA (int *,char*) ;
 int processRegLinesW (int *) ;

BOOL import_registry_file(FILE* reg_file)
{
    if (reg_file)
    {
        BYTE s[2];
        if (fread( s, 2, 1, reg_file) == 1)
        {
            if (s[0] == 0xff && s[1] == 0xfe)
            {
                processRegLinesW(reg_file);
            } else
            {
                processRegLinesA(reg_file, (char*)s);
            }
        }
        return TRUE;
    }
    return FALSE;
}
