
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* WS_GUID ;
 int WS_GUID_LENGTH ;
 char* base64Encode (char*,int) ;
 char* cryptoSha1 (char*,int) ;
 int memcpy (char*,char*,int) ;
 int os_free (char*) ;
 scalar_t__ os_random () ;

__attribute__((used)) static void generateSecKeys(char **key, char **expectedKey) {
  char rndData[16];
  int i;
  for (i = 0; i < 16; i++) {
    rndData[i] = (char) os_random();
  }

  *key = base64Encode(rndData, 16);


  char keyWithGuid[24 + WS_GUID_LENGTH];
  memcpy(keyWithGuid, *key, 24);
  memcpy(keyWithGuid + 24, WS_GUID, WS_GUID_LENGTH);

  char *keyEncrypted = cryptoSha1(keyWithGuid, 24 + WS_GUID_LENGTH);
  *expectedKey = base64Encode(keyEncrypted, 20);

  os_free(keyEncrypted);
}
