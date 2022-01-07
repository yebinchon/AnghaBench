
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
 int ENET_StartSMIWrite (int *,scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ PHY_TIMEOUT_COUNT ;
 int kENET_MiiWriteValidFrame ;
 int kStatus_PHY_SMIVisitTimeout ;
 int kStatus_Success ;

status_t PHY_Write(ENET_Type *base, uint32_t phyAddr, uint32_t phyReg, uint32_t data)
{
    uint32_t counter;


    ENET_ClearInterruptStatus(base, ENET_EIR_MII_MASK);


    ENET_StartSMIWrite(base, phyAddr, phyReg, kENET_MiiWriteValidFrame, data);


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


    ENET_ClearInterruptStatus(base, ENET_EIR_MII_MASK);

    return kStatus_Success;
}
