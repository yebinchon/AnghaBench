
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* msg; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
struct TYPE_4__ {int member_1; TYPE_2__ member_0; } ;
struct diseqc_cmd {TYPE_3__ cmd; int member_1; TYPE_1__ member_0; } ;


 int SEC_MINI_A ;
 int SEC_MINI_B ;
 int SEC_TONE_OFF ;
 int SEC_TONE_ON ;
 int SEC_VOLTAGE_13 ;
 int SEC_VOLTAGE_18 ;
 int diseqc_send_msg (int,int ,struct diseqc_cmd*,int ,int ) ;

__attribute__((used)) static int do_diseqc(int secfd, int sat_no, int polv, int hi_lo)
{
    struct diseqc_cmd cmd = { {{0xe0, 0x10, 0x38, 0xf0, 0x00, 0x00}, 4}, 0 };




    cmd.cmd.msg[3] = 0xf0 | (((sat_no * 4) & 0x0f) | (hi_lo ? 1 : 0) | (polv ? 0 : 2));

    return diseqc_send_msg(secfd, polv ? SEC_VOLTAGE_13 : SEC_VOLTAGE_18,
                           &cmd, hi_lo ? SEC_TONE_ON : SEC_TONE_OFF,
                           ((sat_no / 4) % 2) ? SEC_MINI_B : SEC_MINI_A);
}
