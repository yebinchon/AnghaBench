
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ INT32 ;


 int NVMEM_SHARED_MEM_FILEID ;
 int SMART_CONFIG_PROFILE_SIZE ;




 int aes_decrypt (scalar_t__*,int ) ;
 scalar_t__ aes_read_key (int ) ;
 int key ;
 scalar_t__ nvmem_read (int ,int ,int ,int*) ;
 int* profileArray ;
 scalar_t__ wlan_add_profile (int const,scalar_t__*,int,int *,int,int,int,int,scalar_t__*,int) ;

INT32 wlan_smart_config_process()
{
 INT32 returnValue;
 UINT32 ssidLen, keyLen;
 UINT8 *decKeyPtr;
 UINT8 *ssidPtr;


 returnValue = aes_read_key(key);

 if (returnValue != 0)
  return returnValue;
 returnValue = nvmem_read(NVMEM_SHARED_MEM_FILEID, SMART_CONFIG_PROFILE_SIZE, 0, profileArray);

 if (returnValue != 0)
  return returnValue;

 ssidPtr = &profileArray[1];

 ssidLen = profileArray[0];

 decKeyPtr = &profileArray[profileArray[0] + 3];

 aes_decrypt(decKeyPtr, key);
 if (profileArray[profileArray[0] + 1] > 16)
  aes_decrypt((UINT8 *)(decKeyPtr + 16), key);

 if (*(UINT8 *)(decKeyPtr +31) != 0)
 {
  if (*decKeyPtr == 31)
  {
   keyLen = 31;
   decKeyPtr++;
  }
  else
  {
   keyLen = 32;
  }
 }
 else
 {
  keyLen = *decKeyPtr;
  decKeyPtr++;
 }


 switch (profileArray[profileArray[0] + 2])
 {
 case 131:
  {
   returnValue = wlan_add_profile(profileArray[profileArray[0] + 2],
    ssidPtr,
    ssidLen,
    ((void*)0),
    1,
    0, 0, 0, 0, 0);

   break;
  }

 case 130:
  {
   returnValue = wlan_add_profile(profileArray[profileArray[0] + 2],
    ssidPtr,
    ssidLen,
    ((void*)0),
    1,
    keyLen,
    0,
    0,
    decKeyPtr,
    0);

   break;
  }

 case 129:
 case 128:
  {
   returnValue = wlan_add_profile(128,
    ssidPtr,
    ssidLen,
    ((void*)0),
    1,
    0x18,
    0x1e,
    2,
    decKeyPtr,
    keyLen);

   break;
  }
 }

 return returnValue;
}
