
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 struct SN_env* SN_create_env (int ,int,int) ;

extern struct SN_env * romanian_UTF_8_create_env(void) { return SN_create_env(0, 3, 1); }
