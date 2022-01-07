
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property_action_arg {int action; void* arg; } ;
__attribute__((used)) static bool is_property_set(int action, void *val)
{
    switch (action) {
    case 131:
    case 128:
    case 129:
    case 130:
    case 132:
        return 1;
    case 133: {
        struct m_property_action_arg *key = val;
        return is_property_set(key->action, key->arg);
    }
    default:
        return 0;
    }
}
