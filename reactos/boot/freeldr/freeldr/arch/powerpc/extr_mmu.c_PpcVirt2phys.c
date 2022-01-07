
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BatHit (int,int,int) ;
 int BatTranslate (int,int,int) ;
 int GetBat (int,int,int*,int*) ;
 int GetMSR () ;
 int GetPhys (int) ;
 int GetSDR1 () ;
 int GetSR (int) ;

int PpcVirt2phys( int virt, int inst ) {
    int msr = GetMSR();
    int txmask = inst ? 0x20 : 0x10;
    int i, bath, batl, sr, sdr1, physbase, valo;
    int hash, hashmask, ptehi, ptelo, ptegaddr;

    int vsid, pteh, ptevsid, pteapi;

    if( msr & txmask ) {
    sr = GetSR( virt >> 28 );
    vsid = sr & 0xfffffff;

    valo = (vsid << 28) | (virt & 0xfffffff);
    if( sr & 0x80000000 ) {
        return valo;
    }

    for( i = 0; i < 4; i++ ) {
        GetBat( i, inst, &bath, &batl );
        if( BatHit( bath, batl, virt ) ) {
        return BatTranslate( bath, batl, virt );
        }
    }

    sdr1 = GetSDR1();

    physbase = sdr1 & ~0xffff;
    hashmask = ((sdr1 & 0x1ff) << 10) | 0x3ff;
    hash = (vsid & 0x7ffff) ^ ((valo >> 12) & 0xffff);


    for( pteh = 0; pteh < 0x80; pteh += 64, hash ^= 0x7ffff ) {
        ptegaddr = ((hashmask & hash) * 64) + physbase;

        for( i = 0; i < 8; i++ ) {
        ptehi = GetPhys( ptegaddr + (i * 8) );
        ptelo = GetPhys( ptegaddr + (i * 8) + 4 );

        ptevsid = (ptehi >> 7) & 0xffffff;
        pteapi = ptehi & 0x3f;

        if( (ptehi & 64) != pteh ) continue;
        if( ptevsid != (vsid & 0xffffff) ) continue;
        if( pteapi != ((virt >> 22) & 0x3f) ) continue;

        return (ptelo & 0xfffff000) | (virt & 0xfff);
        }
    }
    return -1;
    } else {
    return virt;
    }
}
