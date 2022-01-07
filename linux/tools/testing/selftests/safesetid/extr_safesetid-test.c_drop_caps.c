
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_value_t ;
typedef int cap_t ;


 int CAP_EFFECTIVE ;
 int CAP_SET ;
 int CAP_SETGID ;
 int CAP_SETUID ;
 int cap_clear (int ) ;
 int cap_free (int ) ;
 int cap_get_proc () ;
 int cap_set_flag (int ,int ,int,int *,int ) ;
 int cap_set_proc (int ) ;

__attribute__((used)) static void drop_caps(bool setid_retained)
{
 cap_value_t cap_values[] = {CAP_SETUID, CAP_SETGID};
 cap_t caps;

 caps = cap_get_proc();
 if (setid_retained)
  cap_set_flag(caps, CAP_EFFECTIVE, 2, cap_values, CAP_SET);
 else
  cap_clear(caps);
 cap_set_proc(caps);
 cap_free(caps);
}
