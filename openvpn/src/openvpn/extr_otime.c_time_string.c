
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,long) ;
 int buf_rmtail (struct buffer*,char) ;
 long ctime (scalar_t__*) ;
 int gettimeofday (struct timeval*,int *) ;

const char *
time_string(time_t t, int usec, bool show_usec, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(64, gc);
    struct timeval tv;

    if (t)
    {
        tv.tv_sec = t;
        tv.tv_usec = usec;
    }
    else
    {
        gettimeofday(&tv, ((void*)0));
    }

    t = tv.tv_sec;
    buf_printf(&out, "%s", ctime(&t));
    buf_rmtail(&out, '\n');

    if (show_usec && tv.tv_usec)
    {
        buf_printf(&out, " us=%ld", (long)tv.tv_usec);
    }

    return BSTR(&out);
}
