
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_state_user {scalar_t__ username; TYPE_1__* pw; } ;
struct TYPE_2__ {int pw_uid; } ;


 int M_ERR ;
 int M_INFO ;
 int msg (int ,char*,scalar_t__) ;
 scalar_t__ setuid (int ) ;

void
platform_user_set(const struct platform_state_user *state)
{
}
