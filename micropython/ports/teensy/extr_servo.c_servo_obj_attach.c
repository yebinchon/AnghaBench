
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_8__ {size_t servo_id; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef TYPE_1__* mp_obj_t ;


 scalar_t__ CORE_NUM_DIGITAL ;
 int IRQ_PDB ;
 int MP_QSTR_ValueError ;
 int NVIC_ENABLE_IRQ (int ) ;
 int OUTPUT ;
 scalar_t__ PDB0_CNT ;
 scalar_t__ PDB0_IDLY ;
 int PDB0_MOD ;
 int PDB0_SC ;
 int PDB_CONFIG ;
 int PDB_SC_SWTRIG ;
 int SIM_SCGC6 ;
 int SIM_SCGC6_PDB ;
 TYPE_1__* mp_const_none ;
 scalar_t__ mp_obj_get_int (TYPE_1__*) ;
 int mp_obj_new_exception_msg_varg (int ,char*,scalar_t__) ;
 int nlr_raise (int ) ;
 int pinMode (scalar_t__,int ) ;
 int servo_active_mask ;
 scalar_t__* servo_pin ;

__attribute__((used)) static mp_obj_t servo_obj_attach(mp_obj_t self_in, mp_obj_t pin_obj) {
    pyb_servo_obj_t *self = self_in;
    uint pin = mp_obj_get_int(pin_obj);
    if (pin > CORE_NUM_DIGITAL) {
        goto pin_error;
    }

    pinMode(pin, OUTPUT);
    servo_pin[self->servo_id] = pin;
    servo_active_mask |= (1 << self->servo_id);
    if (!(SIM_SCGC6 & SIM_SCGC6_PDB)) {
        SIM_SCGC6 |= SIM_SCGC6_PDB;
        PDB0_MOD = 0xFFFF;
        PDB0_CNT = 0;
        PDB0_IDLY = 0;
        PDB0_SC = PDB_CONFIG;


        PDB0_SC = PDB_CONFIG | PDB_SC_SWTRIG;
    }
    NVIC_ENABLE_IRQ(IRQ_PDB);
    return mp_const_none;

pin_error:
    nlr_raise(mp_obj_new_exception_msg_varg(MP_QSTR_ValueError, "pin %d does not exist", pin));
}
