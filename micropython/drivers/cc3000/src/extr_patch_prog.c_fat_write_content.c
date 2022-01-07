
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fatTable ;


 unsigned char BIT0 ;
 unsigned short NVMEM_RM_FILEID ;
 int memset (unsigned char*,int ,int) ;
 unsigned char nvmem_write (int,int,int,unsigned char*) ;

__attribute__((used)) static unsigned char fat_write_content(unsigned short const *file_address,
                                unsigned short const *file_length)
{
    unsigned short index = 0;
    unsigned char ucStatus;
    unsigned char fatTable[48];
    unsigned char* fatTablePtr = fatTable;




    ucStatus = nvmem_write(16, 2, 0, (unsigned char*)"LS");

    for (; index <= NVMEM_RM_FILEID; index++)
    {



        *fatTablePtr++ = (unsigned char)(file_address[index] & 0xff) | BIT0;




        *fatTablePtr++ = (unsigned char)((file_address[index]>>8) & 0xff);




        *fatTablePtr++ = (unsigned char)(file_length[index] & 0xff);




        *fatTablePtr++ = (unsigned char)((file_length[index]>>8) & 0xff);
    }





    ucStatus = nvmem_write(16, 24, 4, fatTable);
    ucStatus = nvmem_write(16, 24, 24+4, &fatTable[24]);




    memset(fatTable, 0, sizeof(fatTable));
    ucStatus = nvmem_write(16, 16, 52, fatTable);

    return ucStatus;
}
