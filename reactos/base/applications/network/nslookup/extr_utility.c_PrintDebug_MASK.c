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
typedef  scalar_t__ ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/ * PSHORT ;
typedef  int* PCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TYPE_A ; 
 int TYPE_NS ; 
 int TYPE_SOA ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10( PCHAR pBuffer, DWORD BufferLength )
{
    USHORT ResponseID;
    UCHAR Header1, Header2;
    USHORT NumQuestions, NumAnswers, NumAuthority, NumAdditional;
    USHORT Type, Class;
    ULONG TTL;
    CHAR pName[255];
    int d = 0, i = 0, k = 0;

    ResponseID = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    Header1 = pBuffer[i];
    i += 1;

    Header2 = pBuffer[i];
    i += 1;

    NumQuestions = FUNC9( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAnswers = FUNC9( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAuthority = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAdditional = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    FUNC7( FUNC6("------------\n") );
    FUNC7( FUNC6("Got answer (%d bytes):\n"), (int)BufferLength );
    FUNC7( FUNC6("    HEADER:\n") );
    FUNC7( FUNC6("        opcode = %s, id = %d, rcode = %s\n"),
                 FUNC3( (Header1 & 0x78) >> 3 ),
                 (int)ResponseID,
                 FUNC4( Header2 & 0x0F ) );

    FUNC7( FUNC6("        header flags:  response") );
    if( Header1 & 0x01 ) FUNC7( FUNC6(", want recursion") );
    if( Header2 & 0x80 ) FUNC7( FUNC6(", recursion avail.") );
    FUNC7( FUNC6("\n") );

    FUNC7( FUNC6("        questions = %d,  answers = %d,  "
                 "authority records = %d,  additional = %d\n\n"),
                 (int)NumQuestions,
                 (int)NumAnswers,
                 (int)NumAuthority,
                 (int)NumAdditional );

    if( NumQuestions )
    {
        FUNC7( FUNC6("    QUESTIONS:\n") );

        for( k = 0; k < NumQuestions; k += 1 )
        {
            i += FUNC2( pBuffer, pName, i, 0 );

            FUNC7( FUNC6("        %s"), pName );

            Type = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            FUNC7( FUNC6(", type = %s, class = %s\n"),
                      FUNC5( Type ),
                      FUNC0( Class ) );
        }
    }

    if( NumAnswers )
    {
        FUNC7( FUNC6("    ANSWERS:\n") );

        for( k = 0; k < NumAnswers; k += 1 )
        {
            FUNC7( FUNC6("    ->  ") );

            /* Print out the name. */
            i += FUNC2( pBuffer, pName, i, 0 );

            FUNC7( FUNC6("%s\n"), pName );

            /* Print out the type, class and data length. */
            Type = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = FUNC8( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            FUNC7( FUNC6("        type = %s, class = %s, dlen = %d\n"),
                      FUNC5( Type ),
                      FUNC0( Class ),
                      d );

            /* Print out the answer. */
            if( TYPE_A == Type )
            {
                i += FUNC1( pBuffer, pName, i );

                FUNC7( FUNC6("        internet address = %s\n"), pName );
            }
            else
            {
                i += FUNC2( pBuffer, pName, i, d );

                FUNC7( FUNC6("        name = %s\n"), pName );
            }

            FUNC7( FUNC6("        ttl = %d ()\n"), (int)TTL );
        }
    }

    if( NumAuthority )
    {
        FUNC7( FUNC6("    AUTHORITY RECORDS:\n") );

        for( k = 0; k < NumAuthority; k += 1 )
        {
            /* Print out the zone name. */
            i += FUNC2( pBuffer, pName, i, 0 );

            FUNC7( FUNC6("    ->  %s\n"), pName );

            /* Print out the type, class, data length and TTL. */
            Type = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = FUNC8( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            FUNC7( FUNC6("        type = %s, class = %s, dlen = %d\n"),
                      FUNC5( Type ),
                      FUNC0( Class ),
                      d );

            /* TODO: There might be more types? */
            if( TYPE_NS == Type )
            {
                /* Print out the NS. */
                i += FUNC2( pBuffer, pName, i, d );

                FUNC7( FUNC6("        nameserver = %s\n"), pName );

                FUNC7( FUNC6("        ttl = %d ()\n"), (int)TTL );
            }
            else if( TYPE_SOA == Type )
            {
                FUNC7( FUNC6("        ttl = %d ()\n"), (int)TTL );

                /* Print out the primary NS. */
                i += FUNC2( pBuffer, pName, i, 0 );

                FUNC7( FUNC6("        primary name server = %s\n"), pName );

                /* Print out the responsible mailbox. */
                i += FUNC2( pBuffer, pName, i, 0 );

                FUNC7( FUNC6("        responsible mail addr = %s\n"), pName );

                /* Print out the serial, refresh, retry, expire and default TTL. */
                FUNC7( FUNC6("        serial = ()\n") );
                FUNC7( FUNC6("        refresh = ()\n") );
                FUNC7( FUNC6("        retry = ()\n") );
                FUNC7( FUNC6("        expire = ()\n") );
                FUNC7( FUNC6("        default TTL = ()\n") );
                i += 20;
            }
        }
    }

    if( NumAdditional )
    {
        FUNC7( FUNC6("    ADDITIONAL:\n") );

        for( k = 0; k < NumAdditional; k += 1 )
        {
            /* Print the name. */
            i += FUNC2( pBuffer, pName, i, 0 );

            FUNC7( FUNC6("    ->  %s\n"), pName );

            /* Print out the type, class, data length and TTL. */
            Type = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = FUNC8( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = FUNC9( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            FUNC7( FUNC6("        type = %s, class = %s, dlen = %d\n"),
                      FUNC5( Type ),
                      FUNC0( Class ),
                      d );

            /* TODO: There might be more types? */
            if( TYPE_A == Type )
            {
                /* Print out the NS. */
                i += FUNC1( pBuffer, pName, i );

                FUNC7( FUNC6("        internet address = %s\n"), pName );

                FUNC7( FUNC6("        ttl = %d ()\n"), (int)TTL );
            }
        }
    }

    FUNC7( FUNC6("\n------------\n") );
}