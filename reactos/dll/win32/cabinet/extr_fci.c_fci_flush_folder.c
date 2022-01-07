
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct folder {int dummy; } ;
typedef scalar_t__ cab_ULONG ;
struct TYPE_13__ {scalar_t__ cbReserveCFFolder; scalar_t__ cb; } ;
struct TYPE_15__ {scalar_t__ fGetNextCabInVain; scalar_t__ fNextCab; scalar_t__ files_size; scalar_t__ pending_data_size; scalar_t__ placed_files_size; scalar_t__ folders_data_size; scalar_t__ folders_size; scalar_t__ cCompressedBytesInFolder; scalar_t__ cDataBlocks; scalar_t__ fSplitFolder; TYPE_2__* pccab; TYPE_1__ ccab; int pv; scalar_t__ estimatedCabinetSize; scalar_t__ statusFolderTotal; scalar_t__ statusFolderCopied; } ;
struct TYPE_14__ {int szDisk; int szCab; int iCab; } ;
typedef int (* PFNFCISTATUS ) (int ,scalar_t__,scalar_t__,int ) ;
typedef int (* PFNFCIGETNEXTCABINET ) (TYPE_2__*,scalar_t__,int ) ;
typedef TYPE_3__ FCI_Int ;
typedef int CFFOLDER ;
typedef scalar_t__ BOOL ;


 scalar_t__ CB_MAX_CABINET_NAME ;
 scalar_t__ CB_MAX_DISK_NAME ;
 int ERROR_BAD_ARGUMENTS ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_GEN_FAILURE ;
 scalar_t__ FALSE ;
 int FCIERR_NONE ;
 int FCIERR_USER_ABORT ;
 scalar_t__ TRUE ;
 int add_data_block (TYPE_3__*,int (*) (int ,scalar_t__,scalar_t__,int )) ;
 int add_data_to_folder (TYPE_3__*,struct folder*,scalar_t__*,int (*) (int ,scalar_t__,scalar_t__,int )) ;
 int add_files_to_folder (TYPE_3__*,struct folder*,scalar_t__) ;
 struct folder* add_folder (TYPE_3__*) ;
 scalar_t__ get_header_size (TYPE_3__*) ;
 int set_error (TYPE_3__*,int ,int ) ;
 int statusFolder ;
 scalar_t__ strlen (int ) ;
 int stub1 (int ,scalar_t__,scalar_t__,int ) ;
 int stub2 (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static BOOL fci_flush_folder( FCI_Int *p_fci_internal,
 BOOL fGetNextCab,
 PFNFCIGETNEXTCABINET pfnfcignc,
 PFNFCISTATUS pfnfcis)
{
  cab_ULONG payload;
  cab_ULONG read_result;
  struct folder *folder;

  if ((!pfnfcignc) || (!pfnfcis)) {
    set_error( p_fci_internal, FCIERR_NONE, ERROR_BAD_ARGUMENTS );
    return FALSE;
  }

  if( p_fci_internal->fGetNextCabInVain &&
      p_fci_internal->fNextCab ){

    set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
    return FALSE;
  }



  if( p_fci_internal->files_size == 0 ) {
    if ( p_fci_internal->pending_data_size != 0 ) {

      set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
      return FALSE;
    }
    return TRUE;
  }


  if (p_fci_internal->fSplitFolder && p_fci_internal->placed_files_size!=0) {
    return TRUE;
  }



  p_fci_internal->fSplitFolder=FALSE;


  if (!add_data_block( p_fci_internal, pfnfcis )) return FALSE;



  p_fci_internal->cDataBlocks=0;

  p_fci_internal->statusFolderTotal = get_header_size( p_fci_internal ) +
      sizeof(CFFOLDER) + p_fci_internal->ccab.cbReserveCFFolder +
      p_fci_internal->placed_files_size+
      p_fci_internal->folders_data_size + p_fci_internal->files_size+
      p_fci_internal->pending_data_size + p_fci_internal->folders_size;
  p_fci_internal->statusFolderCopied = 0;


  if( (*pfnfcis)(statusFolder, p_fci_internal->statusFolderCopied,
      p_fci_internal->statusFolderTotal,
      p_fci_internal->pv) == -1) {
    set_error( p_fci_internal, FCIERR_USER_ABORT, 0 );
    return FALSE;
  }


  read_result = get_header_size( p_fci_internal ) + p_fci_internal->folders_data_size +
      p_fci_internal->placed_files_size + p_fci_internal->folders_size;

  if(p_fci_internal->files_size!=0) {
    read_result+= sizeof(CFFOLDER)+p_fci_internal->ccab.cbReserveCFFolder;
  }
  if( p_fci_internal->fGetNextCabInVain==FALSE &&
      p_fci_internal->fNextCab==FALSE &&
      (
        (
          p_fci_internal->ccab.cb < read_result +
          p_fci_internal->pending_data_size +
          p_fci_internal->files_size +
          CB_MAX_CABINET_NAME +
          CB_MAX_DISK_NAME
        ) || fGetNextCab
      )
  ) {

    ++(p_fci_internal->pccab->iCab);

    p_fci_internal->estimatedCabinetSize=p_fci_internal->statusFolderTotal;
    if (!(*pfnfcignc)(p_fci_internal->pccab,
        p_fci_internal->estimatedCabinetSize,
        p_fci_internal->pv)) {
      set_error( p_fci_internal, FCIERR_NONE, ERROR_FUNCTION_FAILED );
      return FALSE;
    }


    p_fci_internal->fGetNextCabInVain=TRUE;
  }


  if( (p_fci_internal->fGetNextCabInVain ||
        p_fci_internal->fNextCab ) &&
      (
        (
          p_fci_internal->ccab.cb < read_result +
          p_fci_internal->pending_data_size +
          p_fci_internal->files_size +
          strlen(p_fci_internal->pccab->szCab)+1 +
          strlen(p_fci_internal->pccab->szDisk)+1
        ) || fGetNextCab
      )
  ) {
    p_fci_internal->fGetNextCabInVain=FALSE;
    p_fci_internal->fNextCab=TRUE;



    if (p_fci_internal->ccab.cb <=
        p_fci_internal->files_size +
        read_result +
        strlen(p_fci_internal->pccab->szCab)+1 +
        strlen(p_fci_internal->pccab->szDisk)+1
    ) {

      return FALSE;
    }


    p_fci_internal->fSplitFolder=TRUE;

  } else {

    if (p_fci_internal->fNextCab) {

      set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
      return FALSE;
    }
  }

  if (!(folder = add_folder( p_fci_internal ))) return FALSE;
  if (!add_data_to_folder( p_fci_internal, folder, &payload, pfnfcis )) return FALSE;
  if (!add_files_to_folder( p_fci_internal, folder, payload )) return FALSE;


  p_fci_internal->cDataBlocks=0;
  p_fci_internal->cCompressedBytesInFolder=0;

  return TRUE;
}
