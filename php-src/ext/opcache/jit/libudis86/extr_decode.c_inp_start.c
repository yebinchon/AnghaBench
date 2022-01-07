
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {scalar_t__ inp_ctr; } ;



__attribute__((used)) static void
inp_start(struct ud *u)
{
  u->inp_ctr = 0;
}
