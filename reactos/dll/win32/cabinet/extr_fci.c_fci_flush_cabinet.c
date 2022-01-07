
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ cab_ULONG ;
struct TYPE_11__ {scalar_t__ cbReserveCFFolder; scalar_t__ cb; scalar_t__ cbFolderThresh; int szDisk; int szCab; int iCab; } ;
struct TYPE_12__ {scalar_t__ files_size; scalar_t__ fNextCab; scalar_t__ folders_size; scalar_t__ placed_files_size; scalar_t__ pending_data_size; scalar_t__ folders_data_size; scalar_t__ fGetNextCabInVain; scalar_t__ cCompressedBytesInFolder; scalar_t__ fNewPrevious; TYPE_1__ ccab; int pv; int estimatedCabinetSize; TYPE_1__* pccab; int statusFolderTotal; int szPrevDisk; int szPrevCab; scalar_t__ fPrevCab; scalar_t__ fSplitFolder; } ;
typedef int PFNFCISTATUS ;
typedef int (* PFNFCIGETNEXTCABINET ) (TYPE_1__*,int ,int ) ;
typedef TYPE_2__ FCI_Int ;
typedef int CFFOLDER ;
typedef scalar_t__ BOOL ;


 scalar_t__ CB_MAX_CABINET_NAME ;
 scalar_t__ CB_MAX_DISK_NAME ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_GEN_FAILURE ;
 scalar_t__ FALSE ;
 int FCIERR_NONE ;
 scalar_t__ TRUE ;
 scalar_t__ fci_flush_folder (TYPE_2__*,scalar_t__,int (*) (TYPE_1__*,int ,int ),int ) ;
 scalar_t__ get_header_size (TYPE_2__*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int set_error (TYPE_2__*,int ,int ) ;
 scalar_t__ strlen (int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 int write_cabinet (TYPE_2__*,int ) ;

__attribute__((used)) static BOOL fci_flush_cabinet( FCI_Int *p_fci_internal,
 BOOL fGetNextCab,
 PFNFCIGETNEXTCABINET pfnfcignc,
 PFNFCISTATUS pfnfcis)
{
  cab_ULONG read_result=0;
  BOOL returntrue=FALSE;




  if( p_fci_internal->files_size==0 && fGetNextCab ) {
    returntrue=TRUE;
  }

  if (!fci_flush_folder(p_fci_internal,fGetNextCab,pfnfcignc,pfnfcis)){

    return FALSE;
  }

  if(returntrue) return TRUE;

  if ( (p_fci_internal->fSplitFolder && p_fci_internal->fNextCab==FALSE)||
       (p_fci_internal->folders_size==0 &&
         (p_fci_internal->files_size!=0 ||
          p_fci_internal->placed_files_size!=0 )
     ) )
  {

      set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
      return FALSE;
  }


  if (!write_cabinet( p_fci_internal, pfnfcis )) return FALSE;

  p_fci_internal->fPrevCab=TRUE;



  if (p_fci_internal->fNextCab) {
    p_fci_internal->fNextCab=FALSE;

    if (p_fci_internal->files_size==0 && p_fci_internal->pending_data_size!=0) {


      set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
      return FALSE;
    }

    if( p_fci_internal->fNewPrevious ) {
      memcpy(p_fci_internal->szPrevCab, p_fci_internal->ccab.szCab,
        CB_MAX_CABINET_NAME);
      memcpy(p_fci_internal->szPrevDisk, p_fci_internal->ccab.szDisk,
        CB_MAX_DISK_NAME);
      p_fci_internal->fNewPrevious=FALSE;
    }
    p_fci_internal->ccab = *p_fci_internal->pccab;


    read_result=get_header_size( p_fci_internal );
    if(p_fci_internal->files_size!=0) {
        read_result+=p_fci_internal->ccab.cbReserveCFFolder;
    }
    read_result+= p_fci_internal->pending_data_size +
      p_fci_internal->files_size + p_fci_internal->folders_data_size +
      p_fci_internal->placed_files_size + p_fci_internal->folders_size +
      sizeof(CFFOLDER);


    if( p_fci_internal->fGetNextCabInVain==FALSE &&
        p_fci_internal->ccab.cb < read_result ) {
      return fci_flush_cabinet( p_fci_internal, FALSE, pfnfcignc, pfnfcis);
    }







    if (p_fci_internal->fGetNextCabInVain==FALSE && (
      p_fci_internal->ccab.cb < read_result +
      CB_MAX_CABINET_NAME + CB_MAX_DISK_NAME
    )) {

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


    if (p_fci_internal->fGetNextCabInVain && (
        p_fci_internal->ccab.cb < read_result +
        strlen(p_fci_internal->ccab.szCab)+1+
        strlen(p_fci_internal->ccab.szDisk)+1
    )) {
      p_fci_internal->fGetNextCabInVain=FALSE;
      p_fci_internal->fNextCab=TRUE;
      return fci_flush_cabinet( p_fci_internal, FALSE, pfnfcignc, pfnfcis);
    }


    if (p_fci_internal->cCompressedBytesInFolder >= p_fci_internal->ccab.cbFolderThresh)
        return fci_flush_folder(p_fci_internal, FALSE, pfnfcignc, pfnfcis);

    if( p_fci_internal->files_size>0 ) {
      if( !fci_flush_folder(p_fci_internal, FALSE, pfnfcignc, pfnfcis) ) return FALSE;
      p_fci_internal->fNewPrevious=TRUE;
    }
  } else {
    p_fci_internal->fNewPrevious=FALSE;
    if( p_fci_internal->files_size>0 || p_fci_internal->pending_data_size) {


      set_error( p_fci_internal, FCIERR_NONE, ERROR_GEN_FAILURE );
      return FALSE;
    }
  }

  return TRUE;
}
