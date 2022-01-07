
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int status_t ;
typedef int ENET_Type ;


 int ENET_ClearInterruptStatus (int *,int) ;
 int ENET_EIR_MII_MASK ;
 int ENET_GetInterruptStatus (int *) ;
 scalar_t__ ENET_ReadSMIData (int *) ;
 int ENET_StartSMIRead (int *,scalar_t__,scalar_t__,int ) ;
 scalar_t__ PHY_TIMEOUT_COUNT ;
 int assert (scalar_t__*) ;
 int kENET_MiiReadValidFrame ;
 int kStatus_PHY_SMIVisitTimeout ;
 int kStatus_Success ;

status_t PHY_Read(ENET_Type *base, uint32_t phyAddr, uint32_t phyReg, uint32_t *dataPtr)
{
    assert(dataPtr);

    uint32_t counter;


    ENET_ClearInterruptStatus(base, ENET_EIR_MII_MASK);


    ENET_StartSMIRead(base, phyAddr, phyReg, kENET_MiiReadValidFrame);


    for (counter = PHY_TIMEOUT_COUNT; counter > 0; counter--)
    {
        if (ENET_GetInterruptStatus(base) & ENET_EIR_MII_MASK)
        {
            break;
        }
    }


    if (!counter)
    {
        return kStatus_PHY_SMIVisitTimeout;
    }


    *dataPtr = ENET_ReadSMIData(base);


    ENET_ClearInterruptStatus(base, ENET_EIR_MII_MASK);

    return kStatus_Success;
}
