
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* header; TYPE_2__* header64; } ;
struct TYPE_12__ {int * DataDirectory; } ;
struct TYPE_13__ {TYPE_4__ OptionalHeader; } ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_9__ {int * DataDirectory; } ;
struct TYPE_10__ {TYPE_1__ OptionalHeader; } ;
typedef int * PIMAGE_DATA_DIRECTORY ;
typedef TYPE_6__ PE ;


 scalar_t__ IS_64BITS_PE (TYPE_6__*) ;

PIMAGE_DATA_DIRECTORY pe_get_directory_entry( PE* pe, int entry) {





 PIMAGE_DATA_DIRECTORY result = { 0 };

 return result;
}
