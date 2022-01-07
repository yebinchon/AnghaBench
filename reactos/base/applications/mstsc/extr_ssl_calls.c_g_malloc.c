
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CryptMemAlloc (int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void * g_malloc(int size, int zero)
{
    void * p;

    p = CryptMemAlloc(size);
    if (zero)
    {
        memset(p, 0, size);
    }
    return p;
}
