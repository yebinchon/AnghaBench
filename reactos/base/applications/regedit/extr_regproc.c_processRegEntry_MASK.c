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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ currentKeyHandle ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static void FUNC10(WCHAR* stdInput, BOOL isUnicode)
{
    /*
     * We encountered the end of the file, make sure we
     * close the opened key and exit
     */
    if (stdInput == NULL) {
        FUNC3();
        return;
    }

    if      ( stdInput[0] == '[')      /* We are reading a new key */
    {
        WCHAR* keyEnd;
        FUNC3();                    /* Close the previous key */

        /* Get rid of the square brackets */
        stdInput++;
        keyEnd = FUNC9(stdInput, ']');
        if (keyEnd)
            *keyEnd='\0';

        /* delete the key if we encounter '-' at the start of reg key */
        if ( stdInput[0] == '-')
        {
            FUNC4(stdInput + 1);
        } else if ( FUNC7(stdInput) != ERROR_SUCCESS )
        {
            char* stdInputA = FUNC0(stdInput);
            FUNC5(stderr,"%d: setValue failed to open key %s\n",
                    FUNC6(), stdInputA);
            FUNC2(FUNC1(), 0, stdInputA);
        }
    } else if( currentKeyHandle &&
               (( stdInput[0] == '@') || /* reading a default @=data pair */
                ( stdInput[0] == '\"'))) /* reading a new value=data pair */
    {
        FUNC8(stdInput, isUnicode);
    } else
    {
        /* Since we are assuming that the file format is valid we must be
         * reading a blank line which indicates the end of this key processing
         */
        FUNC3();
    }
}