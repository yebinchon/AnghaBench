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
 scalar_t__ FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*,int*) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 (int) ; 

int FUNC7( int virt, int inst ) {
    int msr = FUNC3();
    int txmask = inst ? 0x20 : 0x10;
    int i, bath, batl, sr, sdr1, physbase, valo;
    int hash, hashmask, ptehi, ptelo, ptegaddr;
    //int vahi, npteg;
    int vsid, pteh, ptevsid, pteapi;

    if( msr & txmask ) {
    sr = FUNC6( virt >> 28 );
    vsid = sr & 0xfffffff;
    //vahi = vsid >> 4;
    valo = (vsid << 28) | (virt & 0xfffffff);
    if( sr & 0x80000000 ) {
        return valo;
    }

    for( i = 0; i < 4; i++ ) {
        FUNC2( i, inst, &bath, &batl );
        if( FUNC0( bath, batl, virt ) ) {
        return FUNC1( bath, batl, virt );
        }
    }

    sdr1 = FUNC5();

    physbase = sdr1 & ~0xffff;
    hashmask = ((sdr1 & 0x1ff) << 10) | 0x3ff;
    hash = (vsid & 0x7ffff) ^ ((valo >> 12) & 0xffff);
    //npteg = hashmask + 1;

    for( pteh = 0; pteh < 0x80; pteh += 64, hash ^= 0x7ffff ) {
        ptegaddr = ((hashmask & hash) * 64) + physbase;

        for( i = 0; i < 8; i++ ) {
        ptehi = FUNC4( ptegaddr + (i * 8) );
        ptelo = FUNC4( ptegaddr + (i * 8) + 4 );

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