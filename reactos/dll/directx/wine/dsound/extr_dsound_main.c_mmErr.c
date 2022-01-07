
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HRESULT ;


 int DSERR_ALLOCATED ;
 int DSERR_GENERIC ;
 int DSERR_INVALIDPARAM ;
 int DSERR_NODRIVER ;
 int DSERR_OUTOFMEMORY ;
 int DSERR_UNSUPPORTED ;
 int DS_OK ;
 int FIXME (char*,int) ;
HRESULT mmErr(UINT err)
{
 switch(err) {
 case 133:
  return DS_OK;
 case 138:
  return DSERR_ALLOCATED;
 case 137:
 case 136:
 case 129:
  return DSERR_GENERIC;
 case 134:
  return DSERR_NODRIVER;
 case 132:
  return DSERR_OUTOFMEMORY;
 case 135:
 case 130:
 case 128:
  return DSERR_INVALIDPARAM;
 case 131:
  return DSERR_UNSUPPORTED;
 default:
  FIXME("Unknown MMSYS error %d\n",err);
  return DSERR_GENERIC;
 }
}
