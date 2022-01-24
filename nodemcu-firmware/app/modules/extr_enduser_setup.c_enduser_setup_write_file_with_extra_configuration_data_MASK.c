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
struct keypairs_t {int keypairs_nb; char** keypairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct keypairs_t*) ; 
 struct keypairs_t* FUNC2 (char*,int) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static int FUNC7(char *form_body, int form_length) {
  FUNC0("enduser: write data from posted form");
  FUNC0(form_body);

  // We will save the form data into a file in the LUA format: KEY="VALUE", so that configuration data is available for load in the lua code.
  // As input, we have a string as such: "key1=value1&key2=value2&key3=value%203" (urlencoded), the number of '&' tells us how many keypairs there are (the count + 1)
 
  struct keypairs_t *kp = FUNC2(form_body, form_length);
  if (kp == NULL || kp->keypairs_nb == 0) {
    FUNC0("enduser: No extra configuration.");
    if (kp != NULL) FUNC1(kp);
    return 1;
  }

  // Now that we have the keys and the values, let's save them in a lua file
  int p_file = FUNC5("eus_params.lua", "w");
  if (p_file == 0)
  {
    FUNC0("Can't open file in write mode!");
    FUNC1(kp);
    return 1;
  }

  // write all key pairs as KEY="VALUE"\n into a Lua table, example:
  // local p = {}
  // p.wifi_ssid="ssid"
  // p.wifi_password="password"
  // p.device_name="foo-node"
  // return p
  FUNC6(p_file, "local p={}\n", 11);
  int idx = 0;
  for( idx = 0; idx < kp->keypairs_nb*2; idx=idx+2){
    char* to_write = kp->keypairs[idx];
    size_t length = FUNC3(to_write);
    
    FUNC6(p_file, "p.", 2);

    FUNC6(p_file, to_write, length);

    FUNC6(p_file, "=\"", 2);
    
    to_write = kp->keypairs[idx+1];
    length = FUNC3(to_write);
    FUNC6(p_file, to_write, length);

    FUNC6(p_file, "\"\n", 2);
  }
  FUNC6(p_file, "return p\n", 9);

  FUNC4(p_file);
  FUNC1(kp);
  // TODO: we could call back in the LUA with an associative table setup, but this is MVP2...
  return 0;
}