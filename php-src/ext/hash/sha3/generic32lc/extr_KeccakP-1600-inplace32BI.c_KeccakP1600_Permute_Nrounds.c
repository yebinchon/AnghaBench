
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int Abe0 ;
 int Abi0 ;
 int Abo0 ;
 int Abu0 ;
 int Aga0 ;
 int Age0 ;
 int Agi0 ;
 int Ago0 ;
 int Aka0 ;
 int Ake0 ;
 int Aki0 ;
 int Ako0 ;
 int Ako1 ;
 int Aku0 ;
 int Ama0 ;
 int Ame0 ;
 int Ami0 ;
 int Ami1 ;
 int Amo0 ;
 int Amu0 ;
 int Asa0 ;
 int Asi0 ;
 int Aso0 ;
 int Asu0 ;
 int* KeccakF1600RoundConstants_int2 ;
 int KeccakRound0 () ;
 int KeccakRound1 () ;
 int KeccakRound2 () ;
 int KeccakRound3 () ;
 int SwapEO (int ,int ) ;
 int SwapPI13 (int *,int *,int *,int *,int,int,int,int) ;
 int SwapPI2 (int *,int *,int *,int *) ;

void KeccakP1600_Permute_Nrounds(void *state, unsigned int nRounds)
{
    UINT32 Da0, De0, Di0, Do0, Du0;
    UINT32 Da1, De1, Di1, Do1, Du1;
    UINT32 Ba, Be, Bi, Bo, Bu;
    UINT32 Cx, Cy, Cz, Cw;
    const UINT32 *pRoundConstants = KeccakF1600RoundConstants_int2+(24-nRounds)*2;
    UINT32 *stateAsHalfLanes = (UINT32*)state;
    nRounds &= 3;
    switch ( nRounds )
    {
        case 1:
            Ba = (&stateAsHalfLanes[10])[0]; Be = (&stateAsHalfLanes[10])[1]; Bi = (&stateAsHalfLanes[20])[0]; Bo = (&stateAsHalfLanes[20])[1]; (&stateAsHalfLanes[10])[1] = Bi; (&stateAsHalfLanes[10])[1^1] = Bo; Bi = (&stateAsHalfLanes[40])[0]; Bo = (&stateAsHalfLanes[40])[1]; (&stateAsHalfLanes[20])[0] = Bi; (&stateAsHalfLanes[20])[0^1] = Bo; Bi = (&stateAsHalfLanes[30])[0]; Bo = (&stateAsHalfLanes[30])[1]; (&stateAsHalfLanes[40])[1] = Bi; (&stateAsHalfLanes[40])[1^1] = Bo; (&stateAsHalfLanes[30])[0] = Ba; (&stateAsHalfLanes[30])[0^1] = Be;
            Ba = (&stateAsHalfLanes[ 2])[0]; Be = (&stateAsHalfLanes[ 2])[1]; Bi = (&stateAsHalfLanes[12])[0]; Bo = (&stateAsHalfLanes[12])[1]; (&stateAsHalfLanes[ 2])[0] = Bi; (&stateAsHalfLanes[ 2])[0^1] = Bo; Bi = (&stateAsHalfLanes[32])[0]; Bo = (&stateAsHalfLanes[32])[1]; (&stateAsHalfLanes[12])[1] = Bi; (&stateAsHalfLanes[12])[1^1] = Bo; Bi = (&stateAsHalfLanes[22])[0]; Bo = (&stateAsHalfLanes[22])[1]; (&stateAsHalfLanes[32])[0] = Bi; (&stateAsHalfLanes[32])[0^1] = Bo; (&stateAsHalfLanes[22])[1] = Ba; (&stateAsHalfLanes[22])[1^1] = Be;
            Ba = (&stateAsHalfLanes[ 4])[0]; Be = (&stateAsHalfLanes[ 4])[1]; Bi = (&stateAsHalfLanes[24])[0]; Bo = (&stateAsHalfLanes[24])[1]; (&stateAsHalfLanes[ 4])[1] = Bi; (&stateAsHalfLanes[ 4])[1^1] = Bo; Bi = (&stateAsHalfLanes[14])[0]; Bo = (&stateAsHalfLanes[14])[1]; (&stateAsHalfLanes[24])[0] = Bi; (&stateAsHalfLanes[24])[0^1] = Bo; Bi = (&stateAsHalfLanes[44])[0]; Bo = (&stateAsHalfLanes[44])[1]; (&stateAsHalfLanes[14])[1] = Bi; (&stateAsHalfLanes[14])[1^1] = Bo; (&stateAsHalfLanes[44])[0] = Ba; (&stateAsHalfLanes[44])[0^1] = Be;
            Bi = stateAsHalfLanes[34]; stateAsHalfLanes[34] = stateAsHalfLanes[35]; stateAsHalfLanes[35] = Bi;
            Ba = (&stateAsHalfLanes[ 6])[0]; Be = (&stateAsHalfLanes[ 6])[1]; Bi = (&stateAsHalfLanes[36])[0]; Bo = (&stateAsHalfLanes[36])[1]; (&stateAsHalfLanes[ 6])[1] = Bi; (&stateAsHalfLanes[ 6])[1^1] = Bo; Bi = (&stateAsHalfLanes[46])[0]; Bo = (&stateAsHalfLanes[46])[1]; (&stateAsHalfLanes[36])[0] = Bi; (&stateAsHalfLanes[36])[0^1] = Bo; Bi = (&stateAsHalfLanes[16])[0]; Bo = (&stateAsHalfLanes[16])[1]; (&stateAsHalfLanes[46])[1] = Bi; (&stateAsHalfLanes[46])[1^1] = Bo; (&stateAsHalfLanes[16])[0] = Ba; (&stateAsHalfLanes[16])[0^1] = Be;
            Bi = stateAsHalfLanes[26]; stateAsHalfLanes[26] = stateAsHalfLanes[27]; stateAsHalfLanes[27] = Bi;
            Ba = (&stateAsHalfLanes[ 8])[0]; Be = (&stateAsHalfLanes[ 8])[1]; Bi = (&stateAsHalfLanes[48])[0]; Bo = (&stateAsHalfLanes[48])[1]; (&stateAsHalfLanes[ 8])[0] = Bi; (&stateAsHalfLanes[ 8])[0^1] = Bo; Bi = (&stateAsHalfLanes[28])[0]; Bo = (&stateAsHalfLanes[28])[1]; (&stateAsHalfLanes[48])[1] = Bi; (&stateAsHalfLanes[48])[1^1] = Bo; Bi = (&stateAsHalfLanes[38])[0]; Bo = (&stateAsHalfLanes[38])[1]; (&stateAsHalfLanes[28])[0] = Bi; (&stateAsHalfLanes[28])[0^1] = Bo; (&stateAsHalfLanes[38])[1] = Ba; (&stateAsHalfLanes[38])[1^1] = Be;
            break;

        case 2:
            Ba = (&stateAsHalfLanes[10])[0]; Be = (&stateAsHalfLanes[10])[1]; Bi = (&stateAsHalfLanes[40])[0]; Bo = (&stateAsHalfLanes[40])[1]; (&stateAsHalfLanes[10])[1] = Bi; (&stateAsHalfLanes[10])[0] = Bo; (&stateAsHalfLanes[40])[1] = Ba; (&stateAsHalfLanes[40])[0] = Be; Ba = (&stateAsHalfLanes[20])[0]; Be = (&stateAsHalfLanes[20])[1]; Bi = (&stateAsHalfLanes[30])[0]; Bo = (&stateAsHalfLanes[30])[1]; (&stateAsHalfLanes[20])[1] = Bi; (&stateAsHalfLanes[20])[0] = Bo; (&stateAsHalfLanes[30])[1] = Ba; (&stateAsHalfLanes[30])[0] = Be;
            Ba = (&stateAsHalfLanes[ 2])[0]; Be = (&stateAsHalfLanes[ 2])[1]; Bi = (&stateAsHalfLanes[32])[0]; Bo = (&stateAsHalfLanes[32])[1]; (&stateAsHalfLanes[ 2])[1] = Bi; (&stateAsHalfLanes[ 2])[0] = Bo; (&stateAsHalfLanes[32])[1] = Ba; (&stateAsHalfLanes[32])[0] = Be; Ba = (&stateAsHalfLanes[12])[0]; Be = (&stateAsHalfLanes[12])[1]; Bi = (&stateAsHalfLanes[22])[0]; Bo = (&stateAsHalfLanes[22])[1]; (&stateAsHalfLanes[12])[1] = Bi; (&stateAsHalfLanes[12])[0] = Bo; (&stateAsHalfLanes[22])[1] = Ba; (&stateAsHalfLanes[22])[0] = Be;
            Ba = (&stateAsHalfLanes[ 4])[0]; Be = (&stateAsHalfLanes[ 4])[1]; Bi = (&stateAsHalfLanes[14])[0]; Bo = (&stateAsHalfLanes[14])[1]; (&stateAsHalfLanes[ 4])[1] = Bi; (&stateAsHalfLanes[ 4])[0] = Bo; (&stateAsHalfLanes[14])[1] = Ba; (&stateAsHalfLanes[14])[0] = Be; Ba = (&stateAsHalfLanes[24])[0]; Be = (&stateAsHalfLanes[24])[1]; Bi = (&stateAsHalfLanes[44])[0]; Bo = (&stateAsHalfLanes[44])[1]; (&stateAsHalfLanes[24])[1] = Bi; (&stateAsHalfLanes[24])[0] = Bo; (&stateAsHalfLanes[44])[1] = Ba; (&stateAsHalfLanes[44])[0] = Be;
            Ba = (&stateAsHalfLanes[ 6])[0]; Be = (&stateAsHalfLanes[ 6])[1]; Bi = (&stateAsHalfLanes[46])[0]; Bo = (&stateAsHalfLanes[46])[1]; (&stateAsHalfLanes[ 6])[1] = Bi; (&stateAsHalfLanes[ 6])[0] = Bo; (&stateAsHalfLanes[46])[1] = Ba; (&stateAsHalfLanes[46])[0] = Be; Ba = (&stateAsHalfLanes[16])[0]; Be = (&stateAsHalfLanes[16])[1]; Bi = (&stateAsHalfLanes[36])[0]; Bo = (&stateAsHalfLanes[36])[1]; (&stateAsHalfLanes[16])[1] = Bi; (&stateAsHalfLanes[16])[0] = Bo; (&stateAsHalfLanes[36])[1] = Ba; (&stateAsHalfLanes[36])[0] = Be;
            Ba = (&stateAsHalfLanes[ 8])[0]; Be = (&stateAsHalfLanes[ 8])[1]; Bi = (&stateAsHalfLanes[28])[0]; Bo = (&stateAsHalfLanes[28])[1]; (&stateAsHalfLanes[ 8])[1] = Bi; (&stateAsHalfLanes[ 8])[0] = Bo; (&stateAsHalfLanes[28])[1] = Ba; (&stateAsHalfLanes[28])[0] = Be; Ba = (&stateAsHalfLanes[38])[0]; Be = (&stateAsHalfLanes[38])[1]; Bi = (&stateAsHalfLanes[48])[0]; Bo = (&stateAsHalfLanes[48])[1]; (&stateAsHalfLanes[38])[1] = Bi; (&stateAsHalfLanes[38])[0] = Bo; (&stateAsHalfLanes[48])[1] = Ba; (&stateAsHalfLanes[48])[0] = Be;
            break;

        case 3:
            Ba = (&stateAsHalfLanes[10])[0]; Be = (&stateAsHalfLanes[10])[1]; Bi = (&stateAsHalfLanes[30])[0]; Bo = (&stateAsHalfLanes[30])[1]; (&stateAsHalfLanes[10])[0] = Bi; (&stateAsHalfLanes[10])[0^1] = Bo; Bi = (&stateAsHalfLanes[40])[0]; Bo = (&stateAsHalfLanes[40])[1]; (&stateAsHalfLanes[30])[1] = Bi; (&stateAsHalfLanes[30])[1^1] = Bo; Bi = (&stateAsHalfLanes[20])[0]; Bo = (&stateAsHalfLanes[20])[1]; (&stateAsHalfLanes[40])[0] = Bi; (&stateAsHalfLanes[40])[0^1] = Bo; (&stateAsHalfLanes[20])[1] = Ba; (&stateAsHalfLanes[20])[1^1] = Be;
            Ba = (&stateAsHalfLanes[ 2])[0]; Be = (&stateAsHalfLanes[ 2])[1]; Bi = (&stateAsHalfLanes[22])[0]; Bo = (&stateAsHalfLanes[22])[1]; (&stateAsHalfLanes[ 2])[1] = Bi; (&stateAsHalfLanes[ 2])[1^1] = Bo; Bi = (&stateAsHalfLanes[32])[0]; Bo = (&stateAsHalfLanes[32])[1]; (&stateAsHalfLanes[22])[0] = Bi; (&stateAsHalfLanes[22])[0^1] = Bo; Bi = (&stateAsHalfLanes[12])[0]; Bo = (&stateAsHalfLanes[12])[1]; (&stateAsHalfLanes[32])[1] = Bi; (&stateAsHalfLanes[32])[1^1] = Bo; (&stateAsHalfLanes[12])[0] = Ba; (&stateAsHalfLanes[12])[0^1] = Be;
            Ba = (&stateAsHalfLanes[ 4])[0]; Be = (&stateAsHalfLanes[ 4])[1]; Bi = (&stateAsHalfLanes[44])[0]; Bo = (&stateAsHalfLanes[44])[1]; (&stateAsHalfLanes[ 4])[0] = Bi; (&stateAsHalfLanes[ 4])[0^1] = Bo; Bi = (&stateAsHalfLanes[14])[0]; Bo = (&stateAsHalfLanes[14])[1]; (&stateAsHalfLanes[44])[1] = Bi; (&stateAsHalfLanes[44])[1^1] = Bo; Bi = (&stateAsHalfLanes[24])[0]; Bo = (&stateAsHalfLanes[24])[1]; (&stateAsHalfLanes[14])[0] = Bi; (&stateAsHalfLanes[14])[0^1] = Bo; (&stateAsHalfLanes[24])[1] = Ba; (&stateAsHalfLanes[24])[1^1] = Be;
            Bi = stateAsHalfLanes[34]; stateAsHalfLanes[34] = stateAsHalfLanes[35]; stateAsHalfLanes[35] = Bi;
            Ba = (&stateAsHalfLanes[ 6])[0]; Be = (&stateAsHalfLanes[ 6])[1]; Bi = (&stateAsHalfLanes[16])[0]; Bo = (&stateAsHalfLanes[16])[1]; (&stateAsHalfLanes[ 6])[0] = Bi; (&stateAsHalfLanes[ 6])[0^1] = Bo; Bi = (&stateAsHalfLanes[46])[0]; Bo = (&stateAsHalfLanes[46])[1]; (&stateAsHalfLanes[16])[1] = Bi; (&stateAsHalfLanes[16])[1^1] = Bo; Bi = (&stateAsHalfLanes[36])[0]; Bo = (&stateAsHalfLanes[36])[1]; (&stateAsHalfLanes[46])[0] = Bi; (&stateAsHalfLanes[46])[0^1] = Bo; (&stateAsHalfLanes[36])[1] = Ba; (&stateAsHalfLanes[36])[1^1] = Be;
            Bi = stateAsHalfLanes[26]; stateAsHalfLanes[26] = stateAsHalfLanes[27]; stateAsHalfLanes[27] = Bi;
            Ba = (&stateAsHalfLanes[ 8])[0]; Be = (&stateAsHalfLanes[ 8])[1]; Bi = (&stateAsHalfLanes[38])[0]; Bo = (&stateAsHalfLanes[38])[1]; (&stateAsHalfLanes[ 8])[1] = Bi; (&stateAsHalfLanes[ 8])[1^1] = Bo; Bi = (&stateAsHalfLanes[28])[0]; Bo = (&stateAsHalfLanes[28])[1]; (&stateAsHalfLanes[38])[0] = Bi; (&stateAsHalfLanes[38])[0^1] = Bo; Bi = (&stateAsHalfLanes[48])[0]; Bo = (&stateAsHalfLanes[48])[1]; (&stateAsHalfLanes[28])[1] = Bi; (&stateAsHalfLanes[28])[1^1] = Bo; (&stateAsHalfLanes[48])[0] = Ba; (&stateAsHalfLanes[48])[0^1] = Be;
            break;







    }

    do
    {

        switch ( nRounds )
        {
            case 0: KeccakRound0();
            case 3: KeccakRound1();
            case 2: KeccakRound2();
            case 1: KeccakRound3();
        }
        nRounds = 0;
    }
    while ( *pRoundConstants != 0xFF );
}
