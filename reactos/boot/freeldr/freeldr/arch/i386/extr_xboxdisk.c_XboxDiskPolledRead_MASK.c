#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int* PVOID ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  IDE_DC_nIEN ; 
 int IDE_DH_DRV1 ; 
 int IDE_DH_FIXED ; 
 int IDE_DH_LBA ; 
 int IDE_MAX_BUSY_RETRIES ; 
 int IDE_MAX_POLL_RETRIES ; 
 int IDE_SECTOR_BUF_SZ ; 
 int IDE_SR_BUSY ; 
 int IDE_SR_DRQ ; 
 int IDE_SR_ERR ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static BOOLEAN
FUNC13(ULONG CommandPort,
                   ULONG ControlPort,
                   UCHAR PreComp,
                   UCHAR SectorCnt,
                   UCHAR SectorNum,
                   UCHAR CylinderLow,
                   UCHAR CylinderHigh,
                   UCHAR DrvHead,
                   UCHAR Command,
                   PVOID Buffer)
{
    ULONG SectorCount = 0;
    ULONG RetryCount;
    BOOLEAN Junk = FALSE;
    UCHAR Status;

    /* Wait for BUSY to clear */
    for (RetryCount = 0; RetryCount < IDE_MAX_BUSY_RETRIES; RetryCount++)
    {
        Status = FUNC1(CommandPort);
        if (!(Status & IDE_SR_BUSY))
            break;

        FUNC10(10);
    }
    FUNC11("status=0x%x\n", Status);
    FUNC11("waited %d usecs for busy to clear\n", RetryCount * 10);
    if (RetryCount >= IDE_MAX_BUSY_RETRIES)
    {
        FUNC12("Drive is BUSY for too long\n");
        return FALSE;
    }

    /* Write Drive/Head to select drive */
    FUNC6(CommandPort, IDE_DH_FIXED | DrvHead);
    FUNC10(500);

    /* Disable interrupts */
    FUNC5(ControlPort, IDE_DC_nIEN);
    FUNC10(500);

    /* Issue command to drive */
    if (DrvHead & IDE_DH_LBA)
    {
        FUNC11("READ:DRV=%d:LBA=1:BLK=%d:SC=0x%x:CM=0x%x\n",
              DrvHead & IDE_DH_DRV1 ? 1 : 0,
              ((DrvHead & 0x0f) << 24) + (CylinderHigh << 16) + (CylinderLow << 8) + SectorNum,
              SectorCnt,
              Command);
    }
    else
    {
        FUNC11("READ:DRV=%d:LBA=0:CH=0x%x:CL=0x%x:HD=0x%x:SN=0x%x:SC=0x%x:CM=0x%x\n",
              DrvHead & IDE_DH_DRV1 ? 1 : 0,
              CylinderHigh,
              CylinderLow,
              DrvHead & 0x0f,
              SectorNum,
              SectorCnt,
              Command);
    }

    /* Setup command parameters */
    FUNC7(CommandPort, PreComp);
    FUNC8(CommandPort, SectorCnt);
    FUNC9(CommandPort, SectorNum);
    FUNC3(CommandPort, CylinderHigh);
    FUNC4(CommandPort, CylinderLow);
    FUNC6(CommandPort, IDE_DH_FIXED | DrvHead);

    /* Issue the command */
    FUNC2(CommandPort, Command);
    FUNC10(50);

    /* Wait for DRQ or error */
    for (RetryCount = 0; RetryCount < IDE_MAX_POLL_RETRIES; RetryCount++)
    {
        Status = FUNC1(CommandPort);
        if (!(Status & IDE_SR_BUSY))
        {
            if (Status & IDE_SR_ERR)
            {
                FUNC5(ControlPort, 0);
                FUNC10(50);
                FUNC1(CommandPort);
                return FALSE;
            }

            if (Status & IDE_SR_DRQ)
            {
                break;
            }
            else
            {
                FUNC5(ControlPort, 0);
                FUNC10(50);
                FUNC1(CommandPort);
                return FALSE;
            }
        }
        FUNC10(10);
    }

    /* Timed out */
    if (RetryCount >= IDE_MAX_POLL_RETRIES)
    {
        FUNC5(ControlPort, 0);
        FUNC10(50);
        FUNC1(CommandPort);
        return FALSE;
    }

    while (1)
    {
        /* Read data into buffer */
        if (Junk == FALSE)
        {
            FUNC0(CommandPort, Buffer, IDE_SECTOR_BUF_SZ);
            Buffer = (PVOID)((ULONG_PTR)Buffer + IDE_SECTOR_BUF_SZ);
        }
        else
        {
            UCHAR JunkBuffer[IDE_SECTOR_BUF_SZ];
            FUNC0(CommandPort, JunkBuffer, IDE_SECTOR_BUF_SZ);
        }
        SectorCount++;

        /* Check for error or more sectors to read */
        for (RetryCount = 0; RetryCount < IDE_MAX_BUSY_RETRIES; RetryCount++)
        {
            Status = FUNC1(CommandPort);
            if (!(Status & IDE_SR_BUSY))
            {
                if (Status & IDE_SR_ERR)
                {
                    FUNC5(ControlPort, 0);
                    FUNC10(50);
                    FUNC1(CommandPort);
                    return FALSE;
                }
                if (Status & IDE_SR_DRQ)
                {
                    if (SectorCount >= SectorCnt)
                    {
                        FUNC11("Buffer size exceeded!\n");
                        Junk = TRUE;
                    }
                    break;
                }
                else
                {
                    if (SectorCount > SectorCnt)
                    {
                        FUNC11("Read %lu sectors of junk!\n",
                              SectorCount - SectorCnt);
                    }

                    FUNC5(ControlPort, 0);
                    FUNC10(50);
                    FUNC1(CommandPort);
                    return TRUE;
                }
            }
        }
    }
}