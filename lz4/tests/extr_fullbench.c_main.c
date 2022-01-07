
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMK_setBlocksize (int) ;
 int BMK_setNbIterations (int) ;
 int BMK_setPause () ;
 int DISPLAY (int ) ;
 int WELCOME_MESSAGE ;
 int badusage (char const*) ;
 int fullSpeedBench (char const**,int) ;
 int g_compressionAlgo ;
 int g_compressionTest ;
 int g_decompressionAlgo ;
 int g_decompressionTest ;
 int g_noPrompt ;
 int strcmp (char const*,char*) ;
 int usage (char const*) ;
 int usage_advanced () ;

int main(int argc, const char** argv)
{
    int i,
        filenamesStart=2;
    const char* exename = argv[0];
    const char* input_filename=0;


    DISPLAY(WELCOME_MESSAGE);

    if (argc<2) { badusage(exename); return 1; }

    for(i=1; i<argc; i++) {
        const char* argument = argv[i];

        if(!argument) continue;
        if (!strcmp(argument, "--no-prompt")) {
            g_noPrompt = 1;
            continue;
        }


        if (argument[0]=='-') {
            while (argument[1]!=0) {
                argument ++;

                switch(argument[0])
                {

                case 'c':
                    g_decompressionTest = 0;
                    while ((argument[1]>= '0') && (argument[1]<= '9')) {
                        g_compressionAlgo *= 10;
                        g_compressionAlgo += argument[1] - '0';
                        argument++;
                    }
                    break;


                case 'd':
                    g_compressionTest = 0;
                    while ((argument[1]>= '0') && (argument[1]<= '9')) {
                        g_decompressionAlgo *= 10;
                        g_decompressionAlgo += argument[1] - '0';
                        argument++;
                    }
                    break;


                case 'h' :
                case 'H': usage(exename); usage_advanced(); return 0;


                case 'B':
                    while (argument[1]!=0)
                    switch(argument[1])
                    {
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    { int B = argument[1] - '0';
                        int S = 1 << (8 + 2*B);
                        BMK_setBlocksize(S);
                        argument++;
                        break;
                    }
                    case 'D': argument++; break;
                    default : goto _exit_blockProperties;
                    }
_exit_blockProperties:
                    break;


                case 'i':
                    if ((argument[1] >='0') && (argument[1] <='9')) {
                        int iters = argument[1] - '0';
                        BMK_setNbIterations(iters);
                        argument++;
                    }
                    break;


                case 'p': BMK_setPause(); break;


                default : badusage(exename); return 1;
                }
            }
            continue;
        }


        if (!input_filename) { input_filename=argument; filenamesStart=i; continue; }

    }


    if(!input_filename) { badusage(exename); return 1; }

    return fullSpeedBench(argv+filenamesStart, argc-filenamesStart);

}
