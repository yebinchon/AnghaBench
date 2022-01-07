
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int cab_UBYTE ;
typedef int USHORT ;
struct TYPE_13__ {scalar_t__ (* read ) (int ,int*,scalar_t__) ;int (* seek ) (int ,int,int ) ;int (* free ) (char*) ;} ;
struct TYPE_12__ {int cbCabinet; int cFolders; int cFiles; int setID; int iCabinet; int fReserve; int hasprev; int hasnext; } ;
struct TYPE_11__ {int header_resv; int folder_resv; int block_resv; char* prevname; char* previnfo; char* nextname; char* nextinfo; int hasnext; } ;
typedef TYPE_1__* PMORE_ISCAB_INFO ;
typedef TYPE_2__* PFDICABINETINFO ;
typedef int LONG ;
typedef int INT_PTR ;
typedef TYPE_3__ FDI_Int ;
typedef int BOOL ;


 int ERR (char*) ;
 int EndGetI16 (int*) ;
 int EndGetI32 (int*) ;
 int FALSE ;
 int FDIERROR_CORRUPT_CABINET ;
 int FDIERROR_NOT_A_CABINET ;
 int FDIERROR_UNKNOWN_CABINET_VERSION ;
 char* FDI_read_string (TYPE_3__*,int ,int) ;
 int SEEK_CUR ;
 int TRACE (char*,TYPE_3__*,int ,TYPE_2__*) ;
 int TRUE ;
 int WARN (char*) ;
 int cfheadNEXT_CABINET ;
 int cfheadPREV_CABINET ;
 int cfheadRESERVE_PRESENT ;
 int cfhead_CabinetIndex ;
 int cfhead_CabinetSize ;
 int cfhead_Flags ;
 size_t cfhead_MajorVersion ;
 size_t cfhead_MinorVersion ;
 int cfhead_NumFiles ;
 int cfhead_NumFolders ;
 scalar_t__ cfhead_SIZEOF ;
 int cfhead_SetID ;
 int cfhead_Signature ;
 size_t cfheadext_DataReserved ;
 size_t cfheadext_FolderReserved ;
 int cfheadext_HeaderReserved ;
 scalar_t__ cfheadext_SIZEOF ;
 int set_error (TYPE_3__*,int ,int ) ;
 scalar_t__ stub1 (int ,int*,scalar_t__) ;
 scalar_t__ stub2 (int ,int*,scalar_t__) ;
 int stub3 (int ,int,int ) ;
 int stub4 (char*) ;
 int stub5 (char*) ;
 int stub6 (char*) ;
 int stub7 (char*) ;
 int stub8 (char*) ;
 int stub9 (char*) ;

__attribute__((used)) static BOOL FDI_read_entries(
        FDI_Int *fdi,
        INT_PTR hf,
        PFDICABINETINFO pfdici,
        PMORE_ISCAB_INFO pmii)
{
  int num_folders, num_files, header_resv, folder_resv = 0;
  LONG cabsize;
  USHORT setid, cabidx, flags;
  cab_UBYTE buf[64], block_resv;
  char *prevname = ((void*)0), *previnfo = ((void*)0), *nextname = ((void*)0), *nextinfo = ((void*)0);

  TRACE("(fdi == ^%p, hf == %ld, pfdici == ^%p)\n", fdi, hf, pfdici);


  if (fdi->read(hf, buf, cfhead_SIZEOF) != cfhead_SIZEOF) {
    if (pmii) set_error( fdi, FDIERROR_NOT_A_CABINET, 0 );
    return FALSE;
  }


  if (EndGetI32(buf+cfhead_Signature) != 0x4643534d) {
    if (pmii) set_error( fdi, FDIERROR_NOT_A_CABINET, 0 );
    return FALSE;
  }


  cabsize = EndGetI32(buf+cfhead_CabinetSize);


  num_folders = EndGetI16(buf+cfhead_NumFolders);


  num_files = EndGetI16(buf+cfhead_NumFiles);


  setid = EndGetI16(buf+cfhead_SetID);


  cabidx = EndGetI16(buf+cfhead_CabinetIndex);


  if ((buf[cfhead_MajorVersion] > 1) ||
      (buf[cfhead_MajorVersion] == 1 && buf[cfhead_MinorVersion] > 3))
  {
    WARN("cabinet format version > 1.3\n");
    if (pmii) set_error( fdi, FDIERROR_UNKNOWN_CABINET_VERSION, 0 );
    return FALSE;
  }


  flags = EndGetI16(buf+cfhead_Flags);


  if (flags & cfheadRESERVE_PRESENT) {
    if (fdi->read(hf, buf, cfheadext_SIZEOF) != cfheadext_SIZEOF) {
      ERR("bunk reserve-sizes?\n");
      if (pmii) set_error( fdi, FDIERROR_CORRUPT_CABINET, 0 );
      return FALSE;
    }

    header_resv = EndGetI16(buf+cfheadext_HeaderReserved);
    if (pmii) pmii->header_resv = header_resv;
    folder_resv = buf[cfheadext_FolderReserved];
    if (pmii) pmii->folder_resv = folder_resv;
    block_resv = buf[cfheadext_DataReserved];
    if (pmii) pmii->block_resv = block_resv;

    if (header_resv > 60000) {
      WARN("WARNING; header reserved space > 60000\n");
    }


    if ((header_resv) && (fdi->seek(hf, header_resv, SEEK_CUR) == -1)) {
      ERR("seek failure: header_resv\n");
      if (pmii) set_error( fdi, FDIERROR_CORRUPT_CABINET, 0 );
      return FALSE;
    }
  }

  if (flags & cfheadPREV_CABINET) {
    prevname = FDI_read_string(fdi, hf, cabsize);
    if (!prevname) {
      if (pmii) set_error( fdi, FDIERROR_CORRUPT_CABINET, 0 );
      return FALSE;
    } else
      if (pmii)
        pmii->prevname = prevname;
      else
        fdi->free(prevname);
    previnfo = FDI_read_string(fdi, hf, cabsize);
    if (previnfo) {
      if (pmii)
        pmii->previnfo = previnfo;
      else
        fdi->free(previnfo);
    }
  }

  if (flags & cfheadNEXT_CABINET) {
    if (pmii)
      pmii->hasnext = TRUE;
    nextname = FDI_read_string(fdi, hf, cabsize);
    if (!nextname) {
      if ((flags & cfheadPREV_CABINET) && pmii) {
        if (pmii->prevname) fdi->free(prevname);
        if (pmii->previnfo) fdi->free(previnfo);
      }
      set_error( fdi, FDIERROR_CORRUPT_CABINET, 0 );
      return FALSE;
    } else
      if (pmii)
        pmii->nextname = nextname;
      else
        fdi->free(nextname);
    nextinfo = FDI_read_string(fdi, hf, cabsize);
    if (nextinfo) {
      if (pmii)
        pmii->nextinfo = nextinfo;
      else
        fdi->free(nextinfo);
    }
  }



  pfdici->cbCabinet = cabsize;
  pfdici->cFolders = num_folders;
  pfdici->cFiles = num_files;
  pfdici->setID = setid;
  pfdici->iCabinet = cabidx;
  pfdici->fReserve = (flags & cfheadRESERVE_PRESENT) != 0;
  pfdici->hasprev = (flags & cfheadPREV_CABINET) != 0;
  pfdici->hasnext = (flags & cfheadNEXT_CABINET) != 0;
  return TRUE;
}
