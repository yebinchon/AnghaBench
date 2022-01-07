
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ serverinfo_other_seen ;
 scalar_t__ serverinfo_sct ;
 scalar_t__ serverinfo_sct_seen ;
 scalar_t__ serverinfo_tack ;
 scalar_t__ serverinfo_tack_seen ;

__attribute__((used)) static int verify_serverinfo(void)
{
    if (serverinfo_sct != serverinfo_sct_seen)
        return -1;
    if (serverinfo_tack != serverinfo_tack_seen)
        return -1;
    if (serverinfo_other_seen)
        return -1;
    return 0;
}
