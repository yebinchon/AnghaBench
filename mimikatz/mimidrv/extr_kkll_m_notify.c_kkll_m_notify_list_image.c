
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUCHAR ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 int ImageReferences ;
 int PspLoadImageNotifyRoutine ;
 int PspLoadImageNotifyRoutineMax ;
 int kkll_m_notify_list (int ,int ,int ,int *,int *) ;

NTSTATUS kkll_m_notify_list_image(PKIWI_BUFFER outBuffer)
{
 return kkll_m_notify_list(outBuffer, ImageReferences, ARRAYSIZE(ImageReferences), (PUCHAR *) &PspLoadImageNotifyRoutine, &PspLoadImageNotifyRoutineMax);
}
