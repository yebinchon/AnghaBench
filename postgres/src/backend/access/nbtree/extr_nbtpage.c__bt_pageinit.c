
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Page ;
typedef int BTPageOpaqueData ;


 int PageInit (int ,int ,int) ;

void
_bt_pageinit(Page page, Size size)
{
 PageInit(page, size, sizeof(BTPageOpaqueData));
}
