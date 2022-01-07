
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int * undo_lists_t ;
struct TYPE_15__ {int index; int name; } ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_2__ iface; scalar_t__ prefix_len; int address; int family; TYPE_1__ header; } ;
typedef TYPE_3__ address_message_t ;
typedef scalar_t__ UINT8 ;
struct TYPE_17__ {int InterfaceIndex; int InterfaceLuid; scalar_t__ OnLinkPrefixLength; int Address; } ;
typedef TYPE_4__* PMIB_UNICASTIPADDRESS_ROW ;
typedef int NET_LUID ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ AddListItem (int *,TYPE_4__*) ;
 int CmpAddress ;
 scalar_t__ CreateUnicastIpAddressEntry (TYPE_4__*) ;
 scalar_t__ DeleteAddress (TYPE_4__*) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 int InitializeUnicastIpAddressEntry (TYPE_4__*) ;
 scalar_t__ InterfaceLuid (int ,int *) ;
 TYPE_4__* RemoveListItem (int *,int ,TYPE_4__*) ;
 size_t address ;
 int free (TYPE_4__*) ;
 TYPE_4__* malloc (int) ;
 scalar_t__ msg_add_address ;
 int sockaddr_inet (int ,int *) ;

__attribute__((used)) static DWORD
HandleAddressMessage(address_message_t *msg, undo_lists_t *lists)
{
    DWORD err;
    PMIB_UNICASTIPADDRESS_ROW addr_row;
    BOOL add = msg->header.type == msg_add_address;

    addr_row = malloc(sizeof(*addr_row));
    if (addr_row == ((void*)0))
    {
        return ERROR_OUTOFMEMORY;
    }

    InitializeUnicastIpAddressEntry(addr_row);
    addr_row->Address = sockaddr_inet(msg->family, &msg->address);
    addr_row->OnLinkPrefixLength = (UINT8) msg->prefix_len;

    if (msg->iface.index != -1)
    {
        addr_row->InterfaceIndex = msg->iface.index;
    }
    else
    {
        NET_LUID luid;
        err = InterfaceLuid(msg->iface.name, &luid);
        if (err)
        {
            goto out;
        }
        addr_row->InterfaceLuid = luid;
    }

    if (add)
    {
        err = CreateUnicastIpAddressEntry(addr_row);
        if (err)
        {
            goto out;
        }

        err = AddListItem(&(*lists)[address], addr_row);
        if (err)
        {
            DeleteAddress(addr_row);
        }
    }
    else
    {
        err = DeleteAddress(addr_row);
        if (err)
        {
            goto out;
        }

        free(RemoveListItem(&(*lists)[address], CmpAddress, addr_row));
    }

out:
    if (!add || err)
    {
        free(addr_row);
    }

    return err;
}
