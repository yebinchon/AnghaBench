
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_state_group {scalar_t__ groupname; TYPE_1__* gr; } ;
typedef int gid_t ;
struct TYPE_2__ {int gr_gid; } ;


 int M_ERR ;
 int M_INFO ;
 int msg (int ,char*,scalar_t__) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setgroups (int,int *) ;

void
platform_group_set(const struct platform_state_group *state)
{
}
