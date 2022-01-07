
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int dRess_t ;
struct TYPE_6__ {int passThrough; int overwrite; int testMode; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,...) ;
 unsigned long long ENDOFSTREAM ;
 int EXM_THROW (int,char*) ;
 int EXTENDED_FORMAT ;



 unsigned long long LZ4IO_decodeLegacyStream (TYPE_1__* const,int *,int *) ;
 unsigned long long LZ4IO_decompressLZ4F (TYPE_1__* const,int ,int *,int *) ;
 scalar_t__ LZ4IO_isSkippableMagicNumber (unsigned int) ;
 unsigned long long LZ4IO_passThrough (TYPE_1__* const,int *,int *,unsigned char*) ;
 void* LZ4IO_readLE32 (unsigned char*) ;
 int MAGICNUMBER_SIZE ;
 int SEEK_CUR ;
 size_t fread (unsigned char*,int,int,int *) ;
 int fseek_u32 (int *,unsigned int const,int ) ;
 long ftell (int *) ;
 int g_magicRead ;

__attribute__((used)) static unsigned long long selectDecoder(LZ4IO_prefs_t* const prefs, dRess_t ress, FILE* finput, FILE* foutput)
{
    unsigned char MNstore[MAGICNUMBER_SIZE];
    unsigned magicNumber;
    static unsigned nbFrames = 0;


    nbFrames++;


    if (g_magicRead) {
        magicNumber = g_magicRead;
        g_magicRead = 0;
    } else {
        size_t const nbReadBytes = fread(MNstore, 1, MAGICNUMBER_SIZE, finput);
        if (nbReadBytes==0) { nbFrames = 0; return ENDOFSTREAM; }
        if (nbReadBytes != MAGICNUMBER_SIZE)
          EXM_THROW(40, "Unrecognized header : Magic Number unreadable");
        magicNumber = LZ4IO_readLE32(MNstore);
    }
    if (LZ4IO_isSkippableMagicNumber(magicNumber))
        magicNumber = 128;

    switch(magicNumber)
    {
    case 129:
        return LZ4IO_decompressLZ4F(prefs, ress, finput, foutput);
    case 130:
        DISPLAYLEVEL(4, "Detected : Legacy format \n");
        return LZ4IO_decodeLegacyStream(prefs, finput, foutput);
    case 128:
        DISPLAYLEVEL(4, "Skipping detected skippable area \n");
        { size_t const nbReadBytes = fread(MNstore, 1, 4, finput);
            if (nbReadBytes != 4)
                EXM_THROW(42, "Stream error : skippable size unreadable");
        }
        { unsigned const size = LZ4IO_readLE32(MNstore);
            int const errorNb = fseek_u32(finput, size, SEEK_CUR);
            if (errorNb != 0)
                EXM_THROW(43, "Stream error : cannot skip skippable area");
        }
        return 0;
    EXTENDED_FORMAT;
    default:
        if (nbFrames == 1) {

            if (!prefs->testMode && prefs->overwrite && prefs->passThrough) {
                nbFrames = 0;
                return LZ4IO_passThrough(prefs, finput, foutput, MNstore);
            }
            EXM_THROW(44,"Unrecognized header : file cannot be decoded");
        }
        { long int const position = ftell(finput);
            DISPLAYLEVEL(2, "Stream followed by undecodable data ");
            if (position != -1L)
                DISPLAYLEVEL(2, "at position %i ", (int)position);
            DISPLAYLEVEL(2, "\n");
        }
        return ENDOFSTREAM;
    }
}
