
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SYS_PORTS_PIN_DIRECTION ;
typedef int PORTS_MODULE_ID ;
typedef int PORTS_CHANNEL ;
typedef int PORTS_BIT_POS ;


 int PLIB_PORTS_PinDirectionInputSet (int ,int ,int ) ;
 int PLIB_PORTS_PinDirectionOutputSet (int ,int ,int ) ;
 scalar_t__ SYS_PORTS_DIRECTION_OUTPUT ;

void SYS_PORTS_PinDirectionSelect ( PORTS_MODULE_ID index,
                                 SYS_PORTS_PIN_DIRECTION pinDir,
                                 PORTS_CHANNEL channel,
                                 PORTS_BIT_POS bitPos )
{
    if (pinDir == SYS_PORTS_DIRECTION_OUTPUT)
    {
        PLIB_PORTS_PinDirectionOutputSet(index, channel, bitPos);
    }
    else
    {
        PLIB_PORTS_PinDirectionInputSet(index, channel, bitPos);
    }
}
