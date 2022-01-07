
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int dummy; } ;
struct gl_windowinfo {int dummy; } ;


 int UNUSED_PARAMETER (struct gs_init_data const*) ;
 struct gl_windowinfo* bmalloc (int) ;

extern struct gl_windowinfo *
gl_windowinfo_create(const struct gs_init_data *info)
{
 UNUSED_PARAMETER(info);
 return bmalloc(sizeof(struct gl_windowinfo));
}
