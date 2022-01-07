
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FATAL ;
 int msg (int ,char*,unsigned long) ;

void
buf_size_error(const size_t size)
{
    msg(M_FATAL, "fatal buffer size error, size=%lu", (unsigned long)size);
}
