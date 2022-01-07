
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __ms_va_list ;


 int ERR (char*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int MESSAGEBUFFER_INITIAL_SIZE ;
 int vsnprintf (char*,int,char const*,int ) ;
 char* wpp_messages ;
 int wpp_messages_capacity ;
 int wpp_messages_size ;

__attribute__((used)) static void wpp_write_message(const char *fmt, __ms_va_list args)
{
    char* newbuffer;
    int rc, newsize;

    if(wpp_messages_capacity == 0)
    {
        wpp_messages = HeapAlloc(GetProcessHeap(), 0, MESSAGEBUFFER_INITIAL_SIZE);
        if(wpp_messages == ((void*)0))
            return;

        wpp_messages_capacity = MESSAGEBUFFER_INITIAL_SIZE;
    }

    while(1)
    {
        rc = vsnprintf(wpp_messages + wpp_messages_size,
                       wpp_messages_capacity - wpp_messages_size, fmt, args);

        if (rc < 0 ||
            rc >= wpp_messages_capacity - wpp_messages_size) {

            newsize = wpp_messages_capacity * 2;
            newbuffer = HeapReAlloc(GetProcessHeap(), 0, wpp_messages, newsize);
            if(newbuffer == ((void*)0))
            {
                ERR("Error reallocating memory for parser messages\n");
                return;
            }
            wpp_messages = newbuffer;
            wpp_messages_capacity = newsize;
        }
        else
        {
            wpp_messages_size += rc;
            return;
        }
    }
}
