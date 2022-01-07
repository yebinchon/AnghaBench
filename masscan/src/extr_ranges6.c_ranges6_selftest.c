
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int targets ;
struct Range6List {int dummy; } ;
struct TYPE_2__ {int hi; int lo; } ;
struct Range6 {TYPE_1__ begin; } ;


 int REGRESS (int) ;
 int memset (struct Range6List*,int ,int) ;
 struct Range6 range6_parse (char*,int ,int ) ;
 scalar_t__ regress_pick2 () ;

int
ranges6_selftest(void)
{
    struct Range6 r;
    struct Range6List targets[1];

    REGRESS(regress_pick2() == 0);

    memset(targets, 0, sizeof(targets[0]));




    r = range6_parse("2001:0db8:85a3:0000:0000:8a2e:0370:7334", 0, 0);
    if (r.begin.hi != 0x20010db885a30000)
        return 1;
    if (r.begin.lo != 0x00008a2e03707334)
        return 1;

    return 0;
}
