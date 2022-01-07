
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int* PVOID ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int IDEReadBlock (int,int*,int) ;
 int IDEReadStatus (int) ;
 int IDEWriteCommand (int,int) ;
 int IDEWriteCylinderHigh (int,int) ;
 int IDEWriteCylinderLow (int,int) ;
 int IDEWriteDriveControl (int,int ) ;
 int IDEWriteDriveHead (int,int) ;
 int IDEWritePrecomp (int,int) ;
 int IDEWriteSectorCount (int,int) ;
 int IDEWriteSectorNum (int,int) ;
 int IDE_DC_nIEN ;
 int IDE_DH_DRV1 ;
 int IDE_DH_FIXED ;
 int IDE_DH_LBA ;
 int IDE_MAX_BUSY_RETRIES ;
 int IDE_MAX_POLL_RETRIES ;
 int IDE_SECTOR_BUF_SZ ;
 int IDE_SR_BUSY ;
 int IDE_SR_DRQ ;
 int IDE_SR_ERR ;
 int StallExecutionProcessor (int) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*) ;

__attribute__((used)) static BOOLEAN
XboxDiskPolledRead(ULONG CommandPort,
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


    for (RetryCount = 0; RetryCount < IDE_MAX_BUSY_RETRIES; RetryCount++)
    {
        Status = IDEReadStatus(CommandPort);
        if (!(Status & IDE_SR_BUSY))
            break;

        StallExecutionProcessor(10);
    }
    TRACE("status=0x%x\n", Status);
    TRACE("waited %d usecs for busy to clear\n", RetryCount * 10);
    if (RetryCount >= IDE_MAX_BUSY_RETRIES)
    {
        WARN("Drive is BUSY for too long\n");
        return FALSE;
    }


    IDEWriteDriveHead(CommandPort, IDE_DH_FIXED | DrvHead);
    StallExecutionProcessor(500);


    IDEWriteDriveControl(ControlPort, IDE_DC_nIEN);
    StallExecutionProcessor(500);


    if (DrvHead & IDE_DH_LBA)
    {
        TRACE("READ:DRV=%d:LBA=1:BLK=%d:SC=0x%x:CM=0x%x\n",
              DrvHead & IDE_DH_DRV1 ? 1 : 0,
              ((DrvHead & 0x0f) << 24) + (CylinderHigh << 16) + (CylinderLow << 8) + SectorNum,
              SectorCnt,
              Command);
    }
    else
    {
        TRACE("READ:DRV=%d:LBA=0:CH=0x%x:CL=0x%x:HD=0x%x:SN=0x%x:SC=0x%x:CM=0x%x\n",
              DrvHead & IDE_DH_DRV1 ? 1 : 0,
              CylinderHigh,
              CylinderLow,
              DrvHead & 0x0f,
              SectorNum,
              SectorCnt,
              Command);
    }


    IDEWritePrecomp(CommandPort, PreComp);
    IDEWriteSectorCount(CommandPort, SectorCnt);
    IDEWriteSectorNum(CommandPort, SectorNum);
    IDEWriteCylinderHigh(CommandPort, CylinderHigh);
    IDEWriteCylinderLow(CommandPort, CylinderLow);
    IDEWriteDriveHead(CommandPort, IDE_DH_FIXED | DrvHead);


    IDEWriteCommand(CommandPort, Command);
    StallExecutionProcessor(50);


    for (RetryCount = 0; RetryCount < IDE_MAX_POLL_RETRIES; RetryCount++)
    {
        Status = IDEReadStatus(CommandPort);
        if (!(Status & IDE_SR_BUSY))
        {
            if (Status & IDE_SR_ERR)
            {
                IDEWriteDriveControl(ControlPort, 0);
                StallExecutionProcessor(50);
                IDEReadStatus(CommandPort);
                return FALSE;
            }

            if (Status & IDE_SR_DRQ)
            {
                break;
            }
            else
            {
                IDEWriteDriveControl(ControlPort, 0);
                StallExecutionProcessor(50);
                IDEReadStatus(CommandPort);
                return FALSE;
            }
        }
        StallExecutionProcessor(10);
    }


    if (RetryCount >= IDE_MAX_POLL_RETRIES)
    {
        IDEWriteDriveControl(ControlPort, 0);
        StallExecutionProcessor(50);
        IDEReadStatus(CommandPort);
        return FALSE;
    }

    while (1)
    {

        if (Junk == FALSE)
        {
            IDEReadBlock(CommandPort, Buffer, IDE_SECTOR_BUF_SZ);
            Buffer = (PVOID)((ULONG_PTR)Buffer + IDE_SECTOR_BUF_SZ);
        }
        else
        {
            UCHAR JunkBuffer[IDE_SECTOR_BUF_SZ];
            IDEReadBlock(CommandPort, JunkBuffer, IDE_SECTOR_BUF_SZ);
        }
        SectorCount++;


        for (RetryCount = 0; RetryCount < IDE_MAX_BUSY_RETRIES; RetryCount++)
        {
            Status = IDEReadStatus(CommandPort);
            if (!(Status & IDE_SR_BUSY))
            {
                if (Status & IDE_SR_ERR)
                {
                    IDEWriteDriveControl(ControlPort, 0);
                    StallExecutionProcessor(50);
                    IDEReadStatus(CommandPort);
                    return FALSE;
                }
                if (Status & IDE_SR_DRQ)
                {
                    if (SectorCount >= SectorCnt)
                    {
                        TRACE("Buffer size exceeded!\n");
                        Junk = TRUE;
                    }
                    break;
                }
                else
                {
                    if (SectorCount > SectorCnt)
                    {
                        TRACE("Read %lu sectors of junk!\n",
                              SectorCount - SectorCnt);
                    }

                    IDEWriteDriveControl(ControlPort, 0);
                    StallExecutionProcessor(50);
                    IDEReadStatus(CommandPort);
                    return TRUE;
                }
            }
        }
    }
}
