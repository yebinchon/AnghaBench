
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int obj_class; } ;
struct TYPE_9__ {int stream; TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_U3D ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_Dict ;
typedef int HPDF_BYTE ;


 TYPE_2__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 int HPDF_Dict_Free (TYPE_2__*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Stream_Write (int ,int const*,int ) ;

HPDF_U3D
HPDF_U3D_LoadU3DFromMem ( HPDF_MMgr mmgr,
       const HPDF_BYTE *buf,
       HPDF_UINT size,
       HPDF_Xref xref )
{
 HPDF_Dict image;
 HPDF_STATUS ret = HPDF_OK;

 HPDF_PTRACE ((" HPDF_U3D_LoadU3DFromMem\n"));

 image = HPDF_DictStream_New (mmgr, xref);
 if (!image) {
  return ((void*)0);
 }

 image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
 ret = HPDF_Dict_AddName (image, "Type", "XObject");
 if (ret != HPDF_OK) {
  HPDF_Dict_Free(image);
  return ((void*)0);
 }

 ret = HPDF_Dict_AddName (image, "Subtype", "Image");
 if (ret != HPDF_OK) {
  HPDF_Dict_Free(image);
  return ((void*)0);
 }

 if (HPDF_Stream_Write (image->stream, buf, size) != HPDF_OK) {
  HPDF_Dict_Free(image);
  return ((void*)0);
 }

 return image;
}
