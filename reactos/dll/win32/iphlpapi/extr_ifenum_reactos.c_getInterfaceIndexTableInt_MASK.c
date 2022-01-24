#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tei_instance; int /*<<< orphan*/  tei_entity; } ;
struct TYPE_9__ {int /*<<< orphan*/  if_index; } ;
struct TYPE_10__ {TYPE_1__ ent; } ;
struct TYPE_12__ {TYPE_2__ if_info; TYPE_6__ entity_id; } ;
struct TYPE_11__ {int numAllocated; int numIndexes; int /*<<< orphan*/ * indexes; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ InterfaceIndexTable ;
typedef  TYPE_4__ IFInfo ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_READ_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

InterfaceIndexTable *FUNC8( BOOL nonLoopbackOnly ) {
  DWORD numInterfaces, curInterface = 0;
  int i;
  IFInfo *ifInfo;
  InterfaceIndexTable *ret = 0;
  HANDLE tcpFile;
  NTSTATUS status = FUNC6( &tcpFile, FILE_READ_DATA );

  if( FUNC0(status) ) {
      status = FUNC4( tcpFile, &ifInfo, &numInterfaces );

      FUNC1("InterfaceInfoSet: %08x, %04x:%08x\n",
             status,
             ifInfo->entity_id.tei_entity,
             ifInfo->entity_id.tei_instance);

      if( FUNC0(status) ) {
          ret = (InterfaceIndexTable *)
              FUNC2(1,
                     sizeof(InterfaceIndexTable) +
                     (numInterfaces - 1) * sizeof(DWORD));

          if (ret) {
              ret->numAllocated = numInterfaces;
              FUNC1("NumInterfaces = %d\n", numInterfaces);

              for( i = 0; i < numInterfaces; i++ ) {
                  FUNC1("Examining interface %d\n", i);
                  if( !nonLoopbackOnly ||
                      !FUNC5( tcpFile, &ifInfo[i].entity_id ) ) {
                      FUNC1("Interface %d matches (%d)\n", i, curInterface);
                      ret->indexes[curInterface++] =
                          ifInfo[i].if_info.ent.if_index;
                  }
              }

              ret->numIndexes = curInterface;
          }

          FUNC7( ifInfo );
      }
      FUNC3( tcpFile );
  }

  return ret;
}