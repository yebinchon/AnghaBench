
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct regsvr_filter {int category; int name; scalar_t__ clsid; TYPE_4__* pins; int merit; } ;
struct TYPE_11__ {int cPins2; TYPE_5__* rgPins2; } ;
struct TYPE_12__ {TYPE_1__ s2; } ;
struct TYPE_16__ {int dwVersion; TYPE_2__ u; int dwMerit; } ;
struct TYPE_15__ {int dwFlags; int nMediaTypes; struct TYPE_15__* lpMediaType; int * clsPinCategory; int * lpMedium; scalar_t__ nMediums; scalar_t__ cInstances; int * clsMinorType; int * clsMajorType; } ;
struct TYPE_14__ {int flags; TYPE_3__* mediatypes; } ;
struct TYPE_13__ {int fourcc; scalar_t__ majortype; scalar_t__ subtype; } ;
typedef TYPE_5__ REGPINTYPES ;
typedef TYPE_5__ REGFILTERPINS2 ;
typedef TYPE_7__ REGFILTER2 ;
typedef int LPVOID ;
typedef int IFilterMapper2 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CLSID ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FilterMapper2 ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int CoInitialize (int *) ;
 TYPE_5__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_5__*) ;
 int CoUninitialize () ;
 int ERR (char*,int ) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IFilterMapper2_RegisterFilter (int *,scalar_t__,int ,int *,int ,int *,TYPE_7__*) ;
 int IFilterMapper2_Release (int *) ;
 int IID_IFilterMapper2 ;
 scalar_t__ SUCCEEDED (int ) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static HRESULT register_filters(struct regsvr_filter const *list)
{
    HRESULT hr;
    IFilterMapper2* pFM2 = ((void*)0);

    CoInitialize(((void*)0));
    hr = CoCreateInstance(&CLSID_FilterMapper2, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (LPVOID*)&pFM2);

    if (SUCCEEDED(hr)) {
 for (; SUCCEEDED(hr) && list->clsid; ++list) {
     REGFILTER2 rf2;
     REGFILTERPINS2* prfp2;
     int i;

     for (i = 0; list->pins[i].flags != 0xFFFFFFFF; i++) ;
     rf2.dwVersion = 2;
     rf2.dwMerit = list->merit;
     rf2.u.s2.cPins2 = i;
     rf2.u.s2.rgPins2 = prfp2 = CoTaskMemAlloc(i*sizeof(REGFILTERPINS2));
     if (!prfp2) {
  hr = E_OUTOFMEMORY;
  break;
     }
     for (i = 0; list->pins[i].flags != 0xFFFFFFFF; i++) {
  REGPINTYPES* lpMediatype;
  CLSID* lpClsid;
  int j, nbmt;

  for (nbmt = 0; list->pins[i].mediatypes[nbmt].majortype; nbmt++) ;

  lpMediatype = CoTaskMemAlloc(nbmt*(sizeof(REGPINTYPES) + 2*sizeof(CLSID)));
  if (!lpMediatype) {
      hr = E_OUTOFMEMORY;
      break;
  }
  lpClsid = (CLSID*) (lpMediatype + nbmt);
  for (j = 0; j < nbmt; j++) {
      (lpMediatype + j)->clsMajorType = lpClsid + j*2;
      memcpy(lpClsid + j*2, list->pins[i].mediatypes[j].majortype, sizeof(CLSID));
      (lpMediatype + j)->clsMinorType = lpClsid + j*2 + 1;
      if (list->pins[i].mediatypes[j].subtype)
   memcpy(lpClsid + j*2 + 1, list->pins[i].mediatypes[j].subtype, sizeof(CLSID));
      else {

   memcpy(lpClsid + j*2 + 1, list->pins[i].mediatypes[j].majortype, sizeof(CLSID));
   *(DWORD*)(lpClsid + j*2 + 1) = list->pins[i].mediatypes[j].fourcc;
      }
  }
  prfp2[i].dwFlags = list->pins[i].flags;
  prfp2[i].cInstances = 0;
  prfp2[i].nMediaTypes = j;
  prfp2[i].lpMediaType = lpMediatype;
  prfp2[i].nMediums = 0;
  prfp2[i].lpMedium = ((void*)0);
  prfp2[i].clsPinCategory = ((void*)0);
     }

     if (FAILED(hr)) {
  ERR("failed to register with hresult 0x%x\n", hr);
  CoTaskMemFree(prfp2);
  break;
     }

     hr = IFilterMapper2_RegisterFilter(pFM2, list->clsid, list->name, ((void*)0), list->category, ((void*)0), &rf2);

     while (i) {
  CoTaskMemFree((REGPINTYPES*)prfp2[i-1].lpMediaType);
  i--;
     }
     CoTaskMemFree(prfp2);
 }
    }

    if (pFM2)
 IFilterMapper2_Release(pFM2);

    CoUninitialize();

    return hr;
}
