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

/* Variables and functions */
 char* WS_GUID ; 
 int WS_GUID_LENGTH ; 
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(char **key, char **expectedKey) {
  char rndData[16];
  int i;
  for (i = 0; i < 16; i++) {
    rndData[i] = (char) FUNC4();
  }

  *key = FUNC0(rndData, 16);

  // expectedKey = b64(sha1(keyB64 + GUID))
  char keyWithGuid[24 + WS_GUID_LENGTH];
  FUNC2(keyWithGuid, *key, 24);
  FUNC2(keyWithGuid + 24, WS_GUID, WS_GUID_LENGTH);

  char *keyEncrypted = FUNC1(keyWithGuid, 24 + WS_GUID_LENGTH);
  *expectedKey = FUNC0(keyEncrypted, 20);

  FUNC3(keyEncrypted);
}