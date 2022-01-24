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
 scalar_t__ g_ppk_d ; 
 scalar_t__ g_ppk_n ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int) ; 

int
FUNC11(char* e_data, int e_len, char* n_data, int n_len,
    char* sign_data, int sign_len, char* sign_data2, int sign_len2, char* testkey)
{
    char* key;
    char* md5_final;
    void* md5;

    if ((e_len != 4) || (n_len != 64) || (sign_len != 64) || (sign_len2 != 64))
    {
        return 1;
    }
    md5 = FUNC5();
    if (!md5)
    {
        return 1;
    }
    key = (char*)FUNC10(176);
    md5_final = (char*)FUNC10(64);
    // copy the test key
    FUNC1(key, testkey, 176);
    // replace e and n
    FUNC1(key + 32, e_data, 4);
    FUNC1(key + 36, n_data, 64);
    FUNC3(md5);
    // the first 108 bytes
    FUNC7(md5, key, 108);
    // set the whole thing with 0xff
    FUNC2(md5_final, 0xff, 64);
    // digest 16 bytes
    FUNC4(md5, md5_final);
    // set non 0xff array items
    md5_final[16] = 0;
    md5_final[62] = 1;
    md5_final[63] = 0;
    // encrypt
    FUNC8(sign_data, 64, md5_final, 64, (char*)g_ppk_n, 64,
        (char*)g_ppk_d, 64);
    // cleanup
    FUNC6(md5);
    FUNC9(key);
    FUNC9(md5_final);
    return FUNC0(sign_data, sign_data2, sign_len2);
}