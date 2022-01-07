
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int TRACE (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline DWORD subtract_bytes(DWORD len, DWORD bytes)
{
    if(bytes > len){
        TRACE("Apparent mismatch in chunk lengths? %u bytes remaining, %u bytes read\n", len, bytes);
        return 0;
    }
    return len - bytes;
}
