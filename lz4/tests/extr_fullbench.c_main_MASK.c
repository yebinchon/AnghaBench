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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WELCOME_MESSAGE ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (char const**,int) ; 
 int g_compressionAlgo ; 
 int /*<<< orphan*/  g_compressionTest ; 
 int g_decompressionAlgo ; 
 int /*<<< orphan*/  g_decompressionTest ; 
 int g_noPrompt ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, const char** argv)
{
    int i,
        filenamesStart=2;
    const char* exename = argv[0];
    const char* input_filename=0;

    // Welcome message
    FUNC3(WELCOME_MESSAGE);

    if (argc<2) { FUNC4(exename); return 1; }

    for(i=1; i<argc; i++) {
        const char* argument = argv[i];

        if(!argument) continue;   // Protection if argument empty
        if (!FUNC6(argument, "--no-prompt")) {
            g_noPrompt = 1;
            continue;
        }

        // Decode command (note : aggregated commands are allowed)
        if (argument[0]=='-') {
            while (argument[1]!=0) {
                argument ++;

                switch(argument[0])
                {
                    // Select compression algorithm only
                case 'c':
                    g_decompressionTest = 0;
                    while ((argument[1]>= '0') && (argument[1]<= '9')) {
                        g_compressionAlgo *= 10;
                        g_compressionAlgo += argument[1] - '0';
                        argument++;
                    }
                    break;

                    // Select decompression algorithm only
                case 'd':
                    g_compressionTest = 0;
                    while ((argument[1]>= '0') && (argument[1]<= '9')) {
                        g_decompressionAlgo *= 10;
                        g_decompressionAlgo += argument[1] - '0';
                        argument++;
                    }
                    break;

                    // Display help on usage
                case 'h' :
                case 'H': FUNC7(exename); FUNC8(); return 0;

                    // Modify Block Properties
                case 'B':
                    while (argument[1]!=0)
                    switch(argument[1])
                    {
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    {   int B = argument[1] - '0';
                        int S = 1 << (8 + 2*B);
                        FUNC0(S);
                        argument++;
                        break;
                    }
                    case 'D': argument++; break;
                    default : goto _exit_blockProperties;
                    }
_exit_blockProperties:
                    break;

                    // Modify Nb Iterations
                case 'i':
                    if ((argument[1] >='0') && (argument[1] <='9')) {
                        int iters = argument[1] - '0';
                        FUNC1(iters);
                        argument++;
                    }
                    break;

                    // Pause at the end (hidden option)
                case 'p': FUNC2(); break;

                    // Unknown command
                default : FUNC4(exename); return 1;
                }
            }
            continue;
        }

        // first provided filename is input
        if (!input_filename) { input_filename=argument; filenamesStart=i; continue; }

    }

    // No input filename ==> Error
    if(!input_filename) { FUNC4(exename); return 1; }

    return FUNC5(argv+filenamesStart, argc-filenamesStart);

}