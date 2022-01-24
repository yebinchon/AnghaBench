#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * undo_lists_t ;
struct TYPE_12__ {int /*<<< orphan*/  index; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_13__ {TYPE_2__ iface; TYPE_1__ header; } ;
typedef  TYPE_3__ block_dns_message_t ;
struct TYPE_14__ {scalar_t__ metric_v4; scalar_t__ metric_v6; int /*<<< orphan*/ * engine; int /*<<< orphan*/  index; } ;
typedef  TYPE_4__ block_dns_data_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_15__ {int /*<<< orphan*/ * exe_path; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ BLOCK_DNS_IFACE_METRIC ; 
 int /*<<< orphan*/  BlockDNSErrHandler ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  CmpEngine ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t block_dns ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_4__* FUNC9 (int) ; 
 scalar_t__ msg_add_block_dns ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__ settings ; 

__attribute__((used)) static DWORD
FUNC11(const block_dns_message_t *msg, undo_lists_t *lists)
{
    DWORD err = 0;
    block_dns_data_t *interface_data;
    HANDLE engine = NULL;
    LPCWSTR exe_path;

#ifdef UNICODE
    exe_path = settings.exe_path;
#else
    WCHAR wide_path[MAX_PATH];
    FUNC2(CP_UTF8, 0, settings.exe_path, MAX_PATH, wide_path, MAX_PATH);
    exe_path = wide_path;
#endif

    if (msg->header.type == msg_add_block_dns)
    {
        err = FUNC5(&engine, msg->iface.index, exe_path, BlockDNSErrHandler);
        if (!err)
        {
            interface_data = FUNC9(sizeof(block_dns_data_t));
            if (!interface_data)
            {
                return ERROR_OUTOFMEMORY;
            }
            interface_data->engine = engine;
            interface_data->index = msg->iface.index;
            int is_auto = 0;
            interface_data->metric_v4 = FUNC8(msg->iface.index,
                                                             AF_INET, &is_auto);
            if (is_auto)
            {
                interface_data->metric_v4 = 0;
            }
            interface_data->metric_v6 = FUNC8(msg->iface.index,
                                                             AF_INET6, &is_auto);
            if (is_auto)
            {
                interface_data->metric_v6 = 0;
            }
            err = FUNC0(&(*lists)[block_dns], interface_data);
            if (!err)
            {
                err = FUNC10(msg->iface.index, AF_INET,
                                           BLOCK_DNS_IFACE_METRIC);
                if (!err)
                {
                    FUNC10(msg->iface.index, AF_INET6,
                                         BLOCK_DNS_IFACE_METRIC);
                }
            }
        }
    }
    else
    {
        interface_data = FUNC3(&(*lists)[block_dns], CmpEngine, NULL);
        if (interface_data)
        {
            engine = interface_data->engine;
            err = FUNC6(engine);
            engine = NULL;
            if (interface_data->metric_v4 >= 0)
            {
                FUNC10(msg->iface.index, AF_INET,
                                     interface_data->metric_v4);
            }
            if (interface_data->metric_v6 >= 0)
            {
                FUNC10(msg->iface.index, AF_INET6,
                                     interface_data->metric_v6);
            }
            FUNC7(interface_data);
        }
        else
        {
            FUNC1(M_ERR, FUNC4("No previous block DNS filters to delete"));
        }
    }

    if (err && engine)
    {
        FUNC6(engine);
    }

    return err;
}