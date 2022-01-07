
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_desc {char const* desc; int err; } ;


 struct error_desc* px_err_list ;

const char *
px_strerror(int err)
{
 const struct error_desc *e;

 for (e = px_err_list; e->desc; e++)
  if (e->err == err)
   return e->desc;
 return "Bad error code";
}
