
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ status_t ;
typedef int ENET_Type ;


 int PHY_BASICSTATUS_REG ;
 int PHY_BSTATUS_LINKSTATUS_MASK ;
 scalar_t__ PHY_Read (int *,int,int ,int*) ;
 int assert (int*) ;
 scalar_t__ kStatus_Success ;

status_t PHY_GetLinkStatus(ENET_Type *base, uint32_t phyAddr, bool *status)
{
    assert(status);

    status_t result = kStatus_Success;
    uint32_t data;


    result = PHY_Read(base, phyAddr, PHY_BASICSTATUS_REG, &data);
    if (result == kStatus_Success)
    {
        if (!(PHY_BSTATUS_LINKSTATUS_MASK & data))
        {

            *status = 0;
        }
        else
        {

            *status = 1;
        }
    }
    return result;
}
