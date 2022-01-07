
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DOS_PATH_CHAR ;
 char PATH_CHAR ;
 char UNIX_PATH_CHAR ;

void ConvertPathCharacters(char *Path)
{
    int i;

    i = 0;
    while (Path[i] != 0)
    {
        if (Path[i] == DOS_PATH_CHAR || Path[i] == UNIX_PATH_CHAR)
        {
            Path[i] = PATH_CHAR;
        }

        i++;
    }
}
