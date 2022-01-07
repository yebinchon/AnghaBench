
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int FILE ;


 char* GetWideString (char*) ;
 size_t REG_VAL_BUF_SIZE ;
 size_t fread (char*,int,size_t,int *) ;
 int heap_free (char*) ;
 char* heap_xalloc (size_t) ;
 char* heap_xrealloc (char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static WCHAR *get_lineA(FILE *fp)
{
    static WCHAR *lineW;
    static size_t size;
    static char *buf, *next;
    char *line;

    heap_free(lineW);

    if (!fp) goto cleanup;

    if (!size)
    {
        size = REG_VAL_BUF_SIZE;
        buf = heap_xalloc(size);
        *buf = 0;
        next = buf;
    }
    line = next;

    while (next)
    {
        char *p = strpbrk(line, "\r\n");
        if (!p)
        {
            size_t len, count;
            len = strlen(next);
            memmove(buf, next, len + 1);
            if (size - len < 3)
            {
                size *= 2;
                buf = heap_xrealloc(buf, size);
            }
            if (!(count = fread(buf + len, 1, size - len - 1, fp)))
            {
                next = ((void*)0);
                lineW = GetWideString(buf);
                return lineW;
            }
            buf[len + count] = 0;
            next = buf;
            line = buf;
            continue;
        }
        next = p + 1;
        if (*p == '\r' && *(p + 1) == '\n') next++;
        *p = 0;
        lineW = GetWideString(line);
        return lineW;
    }

cleanup:
    lineW = ((void*)0);
    if (size) heap_free(buf);
    size = 0;
    return ((void*)0);
}
