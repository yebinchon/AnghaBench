
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPSTR ;
typedef int CERT_ENHKEY_USAGE ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int * add_oid_to_usage (int *,scalar_t__*) ;
 scalar_t__* strchr (scalar_t__*,char) ;

__attribute__((used)) static CERT_ENHKEY_USAGE *convert_usages_str_to_usage(LPSTR usageStr)
{
    CERT_ENHKEY_USAGE *usage = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
     sizeof(CERT_ENHKEY_USAGE));

    if (usage)
    {
        LPSTR ptr, comma;

        for (ptr = usageStr, comma = strchr(ptr, ','); usage && ptr && *ptr;
         ptr = comma ? comma + 1 : ((void*)0),
         comma = ptr ? strchr(ptr, ',') : ((void*)0))
        {
            if (comma)
                *comma = 0;
            usage = add_oid_to_usage(usage, ptr);
        }
    }
    return usage;
}
