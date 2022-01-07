
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FATAL ;
 int msg (int ,char*,int,int,char const*,int) ;

__attribute__((used)) static inline int
index_verify(int index, int size, const char *file, int line)
{
    if (index < 0 || index >= size)
    {
        msg(M_FATAL, "Assertion Failed: Array index=%d out of bounds for array size=%d in %s:%d",
            index,
            size,
            file,
            line);
    }
    return index;
}
