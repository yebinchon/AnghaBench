
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* PCSTR ;
typedef char* PCHAR ;


 int TRACE (char*,char*,char*) ;
 size_t strlen (char*) ;

VOID FsGetFirstNameFromPath(PCHAR Buffer, PCSTR Path)
{
    size_t i;
    size_t len;

    len = strlen(Path);




    for (i = 0; i < len; i++)
    {
        if ((Path[i] == '\\') || (Path[i] == '/'))
        {
            break;
        }
        else
        {
            Buffer[i] = Path[i];
        }
    }

    Buffer[i] = 0;

    TRACE("FsGetFirstNameFromPath() Path = %s FirstName = %s\n", Path, Buffer);
}
