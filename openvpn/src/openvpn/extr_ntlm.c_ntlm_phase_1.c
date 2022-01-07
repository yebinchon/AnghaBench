
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_proxy_info {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char*) ;

const char *
ntlm_phase_1(const struct http_proxy_info *p, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(96, gc);
    buf_printf(&out, "%s", "TlRMTVNTUAABAAAAAgIAAA==");
    return (BSTR(&out));
}
