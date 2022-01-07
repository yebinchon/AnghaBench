
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DynamicBuffer {int used; int allocated; scalar_t__* data; } ;
typedef char* LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__* CryptMemAlloc (int) ;
 scalar_t__* CryptMemRealloc (scalar_t__*,int) ;
 int FALSE ;
 int INITIAL_CERT_BUFFER ;
 int TRUE ;
 int max (int,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static BOOL add_line_to_buffer(struct DynamicBuffer *buffer, LPCSTR line)
{
    BOOL ret;

    if (buffer->used + strlen(line) + 1 > buffer->allocated)
    {
        if (!buffer->allocated)
        {
            buffer->data = CryptMemAlloc(INITIAL_CERT_BUFFER);
            if (buffer->data)
            {
                buffer->data[0] = 0;
                buffer->allocated = INITIAL_CERT_BUFFER;
            }
        }
        else
        {
            DWORD new_size = max(buffer->allocated * 2,
             buffer->used + strlen(line) + 1);

            buffer->data = CryptMemRealloc(buffer->data, new_size);
            if (buffer->data)
                buffer->allocated = new_size;
        }
    }
    if (buffer->data)
    {
        strcpy((char *)buffer->data + strlen((char *)buffer->data), line);




        buffer->used += strlen(line);
        ret = TRUE;
    }
    else
        ret = FALSE;
    return ret;
}
