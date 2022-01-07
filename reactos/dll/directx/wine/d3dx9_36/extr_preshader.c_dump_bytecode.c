
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,...) ;
 unsigned int min (unsigned int,int) ;

__attribute__((used)) static void dump_bytecode(void *data, unsigned int size)
{
    unsigned int *bytecode = (unsigned int *)data;
    unsigned int i, j, n;

    size /= sizeof(*bytecode);
    i = 0;
    while (i < size)
    {
        n = min(size - i, 8);
        for (j = 0; j < n; ++j)
            TRACE("0x%08x,", bytecode[i + j]);
        i += n;
        TRACE("\n");
    }
}
