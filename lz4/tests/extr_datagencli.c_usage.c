
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPRESSIBILITY_DEFAULT ;
 int DISPLAY (char*,...) ;
 int SEED_DEFAULT ;
 int SIZE_DEFAULT ;

__attribute__((used)) static int usage(char* programName)
{
    DISPLAY( "Compressible data generator\n");
    DISPLAY( "Usage :\n");
    DISPLAY( "      %s [size] [args]\n", programName);
    DISPLAY( "\n");
    DISPLAY( "Arguments :\n");
    DISPLAY( " -g#    : generate # data (default:%i)\n", SIZE_DEFAULT);
    DISPLAY( " -s#    : Select seed (default:%i)\n", SEED_DEFAULT);
    DISPLAY( " -P#    : Select compressibility in %% (default:%i%%)\n", COMPRESSIBILITY_DEFAULT);
    DISPLAY( " -h     : display help and exit\n");
    DISPLAY( "Special values :\n");
    DISPLAY( " -P0    : generate incompressible noise\n");
    DISPLAY( " -P100  : generate sparse files\n");
    return 0;
}
