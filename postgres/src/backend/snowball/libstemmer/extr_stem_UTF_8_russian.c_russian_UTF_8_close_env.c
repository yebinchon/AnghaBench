
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int SN_close_env (struct SN_env*,int ) ;

extern void russian_UTF_8_close_env(struct SN_env * z) { SN_close_env(z, 0); }
