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
 int KEY_TEST_NUM ; 
 unsigned int NUM_TESTS ; 
 char* cbc_data ; 
 int* cbc_iv ; 
 int* cbc_key ; 
 int* cbc_ok ; 
 int* cfb64_ok ; 
 int** cipher_data ; 
 int** ecb_data ; 
 int* key_data ; 
 int** key_out ; 
 int* key_test ; 
 int* ofb64_ok ; 
 int** plain_data ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void)
{
    unsigned int i, j;

    FUNC0("ecb test data\n");
    FUNC0("key bytes\t\tclear bytes\t\tcipher bytes\n");
    for (i = 0; i < NUM_TESTS; i++) {
        for (j = 0; j < 8; j++)
            FUNC0("%02X", ecb_data[i][j]);
        FUNC0("\t");
        for (j = 0; j < 8; j++)
            FUNC0("%02X", plain_data[i][j]);
        FUNC0("\t");
        for (j = 0; j < 8; j++)
            FUNC0("%02X", cipher_data[i][j]);
        FUNC0("\n");
    }

    FUNC0("set_key test data\n");
    FUNC0("data[8]= ");
    for (j = 0; j < 8; j++)
        FUNC0("%02X", key_data[j]);
    FUNC0("\n");
    for (i = 0; i < KEY_TEST_NUM - 1; i++) {
        FUNC0("c=");
        for (j = 0; j < 8; j++)
            FUNC0("%02X", key_out[i][j]);
        FUNC0(" k[%2u]=", i + 1);
        for (j = 0; j < i + 1; j++)
            FUNC0("%02X", key_test[j]);
        FUNC0("\n");
    }

    FUNC0("\nchaining mode test data\n");
    FUNC0("key[16]   = ");
    for (j = 0; j < 16; j++)
        FUNC0("%02X", cbc_key[j]);
    FUNC0("\niv[8]     = ");
    for (j = 0; j < 8; j++)
        FUNC0("%02X", cbc_iv[j]);
    FUNC0("\ndata[%d]  = '%s'", (int)FUNC1(cbc_data) + 1, cbc_data);
    FUNC0("\ndata[%d]  = ", (int)FUNC1(cbc_data) + 1);
    for (j = 0; j < FUNC1(cbc_data) + 1; j++)
        FUNC0("%02X", cbc_data[j]);
    FUNC0("\n");
    FUNC0("cbc cipher text\n");
    FUNC0("cipher[%d]= ", 32);
    for (j = 0; j < 32; j++)
        FUNC0("%02X", cbc_ok[j]);
    FUNC0("\n");

    FUNC0("cfb64 cipher text\n");
    FUNC0("cipher[%d]= ", (int)FUNC1(cbc_data) + 1);
    for (j = 0; j < FUNC1(cbc_data) + 1; j++)
        FUNC0("%02X", cfb64_ok[j]);
    FUNC0("\n");

    FUNC0("ofb64 cipher text\n");
    FUNC0("cipher[%d]= ", (int)FUNC1(cbc_data) + 1);
    for (j = 0; j < FUNC1(cbc_data) + 1; j++)
        FUNC0("%02X", ofb64_ok[j]);
    FUNC0("\n");
    return 0;
}