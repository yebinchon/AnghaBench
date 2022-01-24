#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dRess_t ;
struct TYPE_6__ {int /*<<< orphan*/  passThrough; int /*<<< orphan*/  overwrite; int /*<<< orphan*/  testMode; } ;
typedef  TYPE_1__ LZ4IO_prefs_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 unsigned long long ENDOFSTREAM ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  EXTENDED_FORMAT ; 
#define  LEGACY_MAGICNUMBER 130 
#define  LZ4IO_MAGICNUMBER 129 
#define  LZ4IO_SKIPPABLE0 128 
 unsigned long long FUNC2 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long long FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned long long FUNC5 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 void* FUNC6 (unsigned char*) ; 
 int MAGICNUMBER_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 size_t FUNC7 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int g_magicRead ; 

__attribute__((used)) static unsigned long long FUNC10(LZ4IO_prefs_t* const prefs, dRess_t ress, FILE* finput, FILE* foutput)
{
    unsigned char MNstore[MAGICNUMBER_SIZE];
    unsigned magicNumber;
    static unsigned nbFrames = 0;

    /* init */
    nbFrames++;

    /* Check Archive Header */
    if (g_magicRead) {  /* magic number already read from finput (see legacy frame)*/
        magicNumber = g_magicRead;
        g_magicRead = 0;
    } else {
        size_t const nbReadBytes = FUNC7(MNstore, 1, MAGICNUMBER_SIZE, finput);
        if (nbReadBytes==0) { nbFrames = 0; return ENDOFSTREAM; }   /* EOF */
        if (nbReadBytes != MAGICNUMBER_SIZE)
          FUNC1(40, "Unrecognized header : Magic Number unreadable");
        magicNumber = FUNC6(MNstore);   /* Little Endian format */
    }
    if (FUNC4(magicNumber))
        magicNumber = LZ4IO_SKIPPABLE0;   /* fold skippable magic numbers */

    switch(magicNumber)
    {
    case LZ4IO_MAGICNUMBER:
        return FUNC3(prefs, ress, finput, foutput);
    case LEGACY_MAGICNUMBER:
        FUNC0(4, "Detected : Legacy format \n");
        return FUNC2(prefs, finput, foutput);
    case LZ4IO_SKIPPABLE0:
        FUNC0(4, "Skipping detected skippable area \n");
        {   size_t const nbReadBytes = FUNC7(MNstore, 1, 4, finput);
            if (nbReadBytes != 4)
                FUNC1(42, "Stream error : skippable size unreadable");
        }
        {   unsigned const size = FUNC6(MNstore);
            int const errorNb = FUNC8(finput, size, SEEK_CUR);
            if (errorNb != 0)
                FUNC1(43, "Stream error : cannot skip skippable area");
        }
        return 0;
    EXTENDED_FORMAT;  /* macro extension for custom formats */
    default:
        if (nbFrames == 1) {  /* just started */
            /* Wrong magic number at the beginning of 1st stream */
            if (!prefs->testMode && prefs->overwrite && prefs->passThrough) {
                nbFrames = 0;
                return FUNC5(prefs, finput, foutput, MNstore);
            }
            FUNC1(44,"Unrecognized header : file cannot be decoded");
        }
        {   long int const position = FUNC9(finput);  /* only works for files < 2 GB */
            FUNC0(2, "Stream followed by undecodable data ");
            if (position != -1L)
                FUNC0(2, "at position %i ", (int)position);
            FUNC0(2, "\n");
        }
        return ENDOFSTREAM;
    }
}