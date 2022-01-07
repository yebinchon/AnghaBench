
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int log; } ;
typedef scalar_t__ OSStatus ;


 int mp_msg (int ,int,char*,char const*,int ,int) ;
 int mp_tag_str (scalar_t__) ;
 scalar_t__ noErr ;

bool check_ca_st(struct ao *ao, int level, OSStatus code, const char *message)
{
    if (code == noErr) return 1;

    mp_msg(ao->log, level, "%s (%s/%d)\n", message, mp_tag_str(code), (int)code);

    return 0;
}
