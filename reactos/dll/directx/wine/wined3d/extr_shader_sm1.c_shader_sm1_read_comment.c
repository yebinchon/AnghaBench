
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token ;
typedef int UINT ;
typedef scalar_t__ DWORD ;


 int TRACE (char*,...) ;
 scalar_t__ WINED3D_SM1_COMMENT_SIZE_MASK ;
 scalar_t__ WINED3D_SM1_COMMENT_SIZE_SHIFT ;
 scalar_t__ WINED3D_SM1_OPCODE_MASK ;
 scalar_t__ WINED3D_SM1_OP_COMMENT ;
 scalar_t__ const WINEMAKEFOURCC (char,char,char,char) ;
 int debugstr_an (char const*,int) ;

__attribute__((used)) static void shader_sm1_read_comment(const DWORD **ptr)
{
    DWORD token = **ptr;
    const char *comment;
    UINT size;

    while ((token & WINED3D_SM1_OPCODE_MASK) == WINED3D_SM1_OP_COMMENT)
    {
        size = (token & WINED3D_SM1_COMMENT_SIZE_MASK) >> WINED3D_SM1_COMMENT_SIZE_SHIFT;
        comment = (const char *)++(*ptr);
        *ptr += size;

        if (size > 1 && *(const DWORD *)comment == WINEMAKEFOURCC('T', 'E', 'X', 'T'))
        {
            const char *end = comment + size * sizeof(token);
            const char *p = comment + sizeof(token);
            const char *line = p;

            TRACE("// TEXT\n");
            while (p != end)
            {
                if (*p == '\n')
                {
                    UINT len = p - line;
                    if (len && *(p - 1) == '\r') --len;
                    TRACE("// %s\n", debugstr_an(line, len));
                    line = ++p;
                }
                else ++p;
            }
            if (line != p)
                TRACE("// %s\n", debugstr_an(line, p - line));
        }
        else if (size)
            TRACE("// %s\n", debugstr_an(comment, size * sizeof(token)));
        else
            break;

        token = **ptr;
    }
}
