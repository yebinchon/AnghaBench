
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int * PUSHORT ;
typedef int * PULONG ;
typedef int * PSHORT ;
typedef int* PCHAR ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 int ClassIDtoClassName (int) ;
 scalar_t__ ExtractIP (int*,int *,int) ;
 scalar_t__ ExtractName (int*,int *,int,int) ;
 int OpcodeIDtoOpcodeName (int) ;
 int RCodeIDtoRCodeName (int) ;
 int TYPE_A ;
 int TYPE_NS ;
 int TYPE_SOA ;
 int TypeIDtoTypeName (int) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;

void PrintDebug( PCHAR pBuffer, DWORD BufferLength )
{
    USHORT ResponseID;
    UCHAR Header1, Header2;
    USHORT NumQuestions, NumAnswers, NumAuthority, NumAdditional;
    USHORT Type, Class;
    ULONG TTL;
    CHAR pName[255];
    int d = 0, i = 0, k = 0;

    ResponseID = ntohs( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    Header1 = pBuffer[i];
    i += 1;

    Header2 = pBuffer[i];
    i += 1;

    NumQuestions = ntohs( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAnswers = ntohs( ((PSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAuthority = ntohs( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    NumAdditional = ntohs( ((PUSHORT)&pBuffer[i])[0] );
    i += 2;

    _tprintf( _T("------------\n") );
    _tprintf( _T("Got answer (%d bytes):\n"), (int)BufferLength );
    _tprintf( _T("    HEADER:\n") );
    _tprintf( _T("        opcode = %s, id = %d, rcode = %s\n"),
                 OpcodeIDtoOpcodeName( (Header1 & 0x78) >> 3 ),
                 (int)ResponseID,
                 RCodeIDtoRCodeName( Header2 & 0x0F ) );

    _tprintf( _T("        header flags:  response") );
    if( Header1 & 0x01 ) _tprintf( _T(", want recursion") );
    if( Header2 & 0x80 ) _tprintf( _T(", recursion avail.") );
    _tprintf( _T("\n") );

    _tprintf( _T("        questions = %d,  answers = %d,  "
                 "authority records = %d,  additional = %d\n\n"),
                 (int)NumQuestions,
                 (int)NumAnswers,
                 (int)NumAuthority,
                 (int)NumAdditional );

    if( NumQuestions )
    {
        _tprintf( _T("    QUESTIONS:\n") );

        for( k = 0; k < NumQuestions; k += 1 )
        {
            i += ExtractName( pBuffer, pName, i, 0 );

            _tprintf( _T("        %s"), pName );

            Type = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            _tprintf( _T(", type = %s, class = %s\n"),
                      TypeIDtoTypeName( Type ),
                      ClassIDtoClassName( Class ) );
        }
    }

    if( NumAnswers )
    {
        _tprintf( _T("    ANSWERS:\n") );

        for( k = 0; k < NumAnswers; k += 1 )
        {
            _tprintf( _T("    ->  ") );


            i += ExtractName( pBuffer, pName, i, 0 );

            _tprintf( _T("%s\n"), pName );


            Type = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = ntohl( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            _tprintf( _T("        type = %s, class = %s, dlen = %d\n"),
                      TypeIDtoTypeName( Type ),
                      ClassIDtoClassName( Class ),
                      d );


            if( TYPE_A == Type )
            {
                i += ExtractIP( pBuffer, pName, i );

                _tprintf( _T("        internet address = %s\n"), pName );
            }
            else
            {
                i += ExtractName( pBuffer, pName, i, d );

                _tprintf( _T("        name = %s\n"), pName );
            }

            _tprintf( _T("        ttl = %d ()\n"), (int)TTL );
        }
    }

    if( NumAuthority )
    {
        _tprintf( _T("    AUTHORITY RECORDS:\n") );

        for( k = 0; k < NumAuthority; k += 1 )
        {

            i += ExtractName( pBuffer, pName, i, 0 );

            _tprintf( _T("    ->  %s\n"), pName );


            Type = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = ntohl( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            _tprintf( _T("        type = %s, class = %s, dlen = %d\n"),
                      TypeIDtoTypeName( Type ),
                      ClassIDtoClassName( Class ),
                      d );


            if( TYPE_NS == Type )
            {

                i += ExtractName( pBuffer, pName, i, d );

                _tprintf( _T("        nameserver = %s\n"), pName );

                _tprintf( _T("        ttl = %d ()\n"), (int)TTL );
            }
            else if( TYPE_SOA == Type )
            {
                _tprintf( _T("        ttl = %d ()\n"), (int)TTL );


                i += ExtractName( pBuffer, pName, i, 0 );

                _tprintf( _T("        primary name server = %s\n"), pName );


                i += ExtractName( pBuffer, pName, i, 0 );

                _tprintf( _T("        responsible mail addr = %s\n"), pName );


                _tprintf( _T("        serial = ()\n") );
                _tprintf( _T("        refresh = ()\n") );
                _tprintf( _T("        retry = ()\n") );
                _tprintf( _T("        expire = ()\n") );
                _tprintf( _T("        default TTL = ()\n") );
                i += 20;
            }
        }
    }

    if( NumAdditional )
    {
        _tprintf( _T("    ADDITIONAL:\n") );

        for( k = 0; k < NumAdditional; k += 1 )
        {

            i += ExtractName( pBuffer, pName, i, 0 );

            _tprintf( _T("    ->  %s\n"), pName );


            Type = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            Class = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            TTL = ntohl( ((PULONG)&pBuffer[i])[0] );
            i += 4;

            d = ntohs( ((PUSHORT)&pBuffer[i])[0] );
            i += 2;

            _tprintf( _T("        type = %s, class = %s, dlen = %d\n"),
                      TypeIDtoTypeName( Type ),
                      ClassIDtoClassName( Class ),
                      d );


            if( TYPE_A == Type )
            {

                i += ExtractIP( pBuffer, pName, i );

                _tprintf( _T("        internet address = %s\n"), pName );

                _tprintf( _T("        ttl = %d ()\n"), (int)TTL );
            }
        }
    }

    _tprintf( _T("\n------------\n") );
}
