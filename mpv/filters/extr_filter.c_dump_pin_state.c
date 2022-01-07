
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct mp_pin {scalar_t__ dir; TYPE_1__ data; scalar_t__ data_requested; scalar_t__ within_conn; int manual_connection; TYPE_3__* conn; TYPE_2__* user_conn; int name; } ;
struct mp_filter {int dummy; } ;
struct TYPE_6__ {int owner; } ;
struct TYPE_5__ {int owner; } ;


 scalar_t__ MP_PIN_IN ;
 int MP_WARN (struct mp_filter*,char*,struct mp_pin*,int ,char*,char*,TYPE_2__*,char*,TYPE_3__*,char*,int ,char*,char*,int ) ;
 char* filt_name (int ) ;
 int mp_frame_type_str (int ) ;

__attribute__((used)) static void dump_pin_state(struct mp_filter *f, struct mp_pin *pin)
{
    MP_WARN(f, "  [%p] %s %s c=%s[%p] f=%s[%p] m=%s[%p] %s %s %s\n",
        pin, pin->name, pin->dir == MP_PIN_IN ? "->" : "<-",
        pin->user_conn ? filt_name(pin->user_conn->owner) : "-", pin->user_conn,
        pin->conn ? filt_name(pin->conn->owner) : "-", pin->conn,
        filt_name(pin->manual_connection), pin->manual_connection,
        pin->within_conn ? "(within)" : "",
        pin->data_requested ? "(request)" : "",
        mp_frame_type_str(pin->data.type));
}
