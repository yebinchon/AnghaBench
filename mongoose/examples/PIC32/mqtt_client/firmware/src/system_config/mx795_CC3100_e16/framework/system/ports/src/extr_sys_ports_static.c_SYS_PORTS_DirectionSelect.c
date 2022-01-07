
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SYS_PORTS_PIN_DIRECTION ;
typedef int PORTS_MODULE_ID ;
typedef int PORTS_DATA_MASK ;
typedef int PORTS_CHANNEL ;


 int PLIB_PORTS_DirectionInputSet (int ,int ,int ) ;
 int PLIB_PORTS_DirectionOutputSet (int ,int ,int ) ;
 scalar_t__ SYS_PORTS_DIRECTION_INPUT ;

void SYS_PORTS_DirectionSelect( PORTS_MODULE_ID index,
                             SYS_PORTS_PIN_DIRECTION pinDir,
                             PORTS_CHANNEL channel,
                             PORTS_DATA_MASK mask )
{
    if (pinDir == SYS_PORTS_DIRECTION_INPUT)
    {
        PLIB_PORTS_DirectionInputSet(index, channel, mask);
    }
    else
    {
        PLIB_PORTS_DirectionOutputSet(index, channel, mask);
    }
}
