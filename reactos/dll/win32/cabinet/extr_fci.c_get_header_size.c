
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cab_ULONG ;
struct TYPE_6__ {int cbReserveCFHeader; scalar_t__ cbReserveCFData; scalar_t__ cbReserveCFFolder; } ;
struct TYPE_7__ {TYPE_1__* pccab; scalar_t__ fNextCab; int szPrevDisk; int szPrevCab; scalar_t__ fPrevCab; TYPE_2__ ccab; } ;
struct TYPE_5__ {int szDisk; int szCab; } ;
typedef TYPE_3__ FCI_Int ;
typedef int CFHEADER ;


 scalar_t__ strlen (int ) ;

__attribute__((used)) static cab_ULONG get_header_size( FCI_Int *fci )
{
    cab_ULONG ret = sizeof(CFHEADER) + fci->ccab.cbReserveCFHeader;

    if (fci->ccab.cbReserveCFHeader || fci->ccab.cbReserveCFFolder || fci->ccab.cbReserveCFData)
        ret += 4;

    if (fci->fPrevCab)
        ret += strlen( fci->szPrevCab ) + 1 + strlen( fci->szPrevDisk ) + 1;

    if (fci->fNextCab)
        ret += strlen( fci->pccab->szCab ) + 1 + strlen( fci->pccab->szDisk ) + 1;

    return ret;
}
