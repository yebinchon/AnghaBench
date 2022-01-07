
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_windowinfo {int dummy; } ;


 int UNUSED_PARAMETER (struct gl_windowinfo*) ;
 int bfree (struct gl_windowinfo*) ;

extern void gl_windowinfo_destroy(struct gl_windowinfo *info)
{
 UNUSED_PARAMETER(info);
 bfree(info);
}
