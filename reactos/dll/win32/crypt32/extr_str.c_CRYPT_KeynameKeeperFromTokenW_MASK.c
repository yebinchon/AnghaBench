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
struct X500TokenW {int end; int start; } ;
struct KeynameKeeper {int keyLen; char* keyName; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct KeynameKeeper*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static void FUNC5(struct KeynameKeeper *keeper,
 const struct X500TokenW *key)
{
    DWORD len = key->end - key->start;

    if (len >= keeper->keyLen)
    {
        FUNC0( keeper );
        keeper->keyLen = len + 1;
        keeper->keyName = FUNC1(keeper->keyLen * sizeof(WCHAR));
    }
    FUNC4(keeper->keyName, key->start, len * sizeof(WCHAR));
    keeper->keyName[len] = '\0';
    FUNC2("Keyname is %s\n", FUNC3(keeper->keyName));
}