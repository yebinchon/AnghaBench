
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ BuildNumber; } ;
struct TYPE_5__ {TYPE_1__ osContext; } ;
typedef TYPE_2__* PKUHL_M_SEKURLSA_CONTEXT ;
typedef int MSV1_0_PRIMARY_HELPER ;


 scalar_t__ KULL_M_WIN_BUILD_10_1507 ;
 scalar_t__ KULL_M_WIN_BUILD_10_1511 ;
 scalar_t__ KULL_M_WIN_BUILD_10_1607 ;
 int * msv1_0_primaryHelper ;

const MSV1_0_PRIMARY_HELPER * kuhl_m_sekurlsa_msv_helper(PKUHL_M_SEKURLSA_CONTEXT context)
{
 const MSV1_0_PRIMARY_HELPER * helper;
 if(context->osContext.BuildNumber < KULL_M_WIN_BUILD_10_1507)
  helper = &msv1_0_primaryHelper[0];
 else if(context->osContext.BuildNumber < KULL_M_WIN_BUILD_10_1511)
  helper = &msv1_0_primaryHelper[1];
 else if(context->osContext.BuildNumber < KULL_M_WIN_BUILD_10_1607)
  helper = &msv1_0_primaryHelper[2];
 else
  helper = &msv1_0_primaryHelper[3];
 return helper;
}
