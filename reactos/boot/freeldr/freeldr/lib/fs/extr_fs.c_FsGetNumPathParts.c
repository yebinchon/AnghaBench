
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef char* PCSTR ;


 int TRACE (char*,char*,scalar_t__) ;
 size_t strlen (char*) ;

ULONG FsGetNumPathParts(PCSTR Path)
{
    size_t i;
    size_t len;
    ULONG num;

    len = strlen(Path);

    for (i = 0, num = 0; i < len; i++)
    {
        if ((Path[i] == '\\') || (Path[i] == '/'))
        {
            num++;
        }
    }
    num++;

    TRACE("FsGetNumPathParts() Path = %s NumPathParts = %d\n", Path, num);

    return num;
}
