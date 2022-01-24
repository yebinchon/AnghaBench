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
typedef  int USHORT ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  int /*<<< orphan*/ * PSHORT ;
typedef  int* PCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8( PCHAR pBuffer, DWORD BufferLength )
{
    USHORT RequestID;
    UCHAR Header1, Header2;
    USHORT NumQuestions, NumAnswers, NumAuthority, NumAdditional;
    USHORT Type, Class;
    CHAR pName[255];
    int i = 0, k = 0;

    RequestID = FUNC7( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    Header1 = pBuffer[i];
    i += 1;

    Header2 = pBuffer[i];
    i += 1;

    NumQuestions = FUNC7( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAnswers = FUNC7( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAuthority = FUNC7( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAdditional = FUNC7( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    FUNC6( FUNC5("------------\n") );
    FUNC6( FUNC5("SendRequest(), len %d\n"), (int)BufferLength );
    FUNC6( FUNC5("    HEADER:\n") );
    FUNC6( FUNC5("        opcode = %s, id = %d, rcode = %s\n"),
                 FUNC2( (Header1 & 0x78) >> 3 ),
                 (int)RequestID,
                 FUNC3( Header2 & 0x0F ) );

    FUNC6( FUNC5("        header flags:  query") );
    if( Header1 & 0x01 ) FUNC6( FUNC5(", want recursion") );
    FUNC6( FUNC5("\n") );

    FUNC6( FUNC5("        questions = %d,  answers = %d,"
                 "  authority records = %d,  additional = %d\n\n"),
                 (int)NumQuestions,
                 (int)NumAnswers,
                 (int)NumAuthority,
                 (int)NumAdditional );

    if( NumQuestions )
    {
        FUNC6( FUNC5("    QUESTIONS:\n") );

        for( k = 0; k < NumQuestions; k += 1 )
        {
            i += FUNC1( pBuffer, pName, i, 0 );

            FUNC6( FUNC5("        %s"), pName );

            Type = FUNC7( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = FUNC7( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            FUNC6( FUNC5(", type = %s, class = %s\n"),
                      FUNC4( Type ),
                      FUNC0( Class ) );
        }
    }

    FUNC6( FUNC5("\n------------\n") );
}