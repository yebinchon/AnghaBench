
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {void* user_opaque_data; } ;



void*
ud_get_user_opaque_data(const struct ud *u)
{
  return u->user_opaque_data;
}
