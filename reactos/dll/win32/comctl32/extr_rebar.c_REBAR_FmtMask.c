
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef size_t INT ;
typedef scalar_t__ CHAR ;


 char** band_maskname ;
 scalar_t__* line ;
 int strcat (scalar_t__*,char*) ;

__attribute__((used)) static CHAR *
REBAR_FmtMask( UINT mask)
{
    INT i = 0;

    *line = 0;
    while (band_maskname[i]) {
 if (mask & (1<<i)) {
     if (*line != 0) strcat(line, " | ");
     strcat(line, band_maskname[i]);
 }
 i++;
    }
    return line;
}
