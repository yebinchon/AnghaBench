
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EStates ;


 int eArrayState ;
 int eBitfieldState ;
 int eCharState ;
 int eDoubleState ;
 int eEnumState ;
 int eLongState ;
 int eMemberState ;
 int eModifierState ;
 int eOneMethodState ;
 int ePointerState ;
 int eShortState ;
 int eStateMax ;
 int eStructState ;
 int eUnionState ;
 int eUnsignedState ;
 int eVoidState ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static EStates convert_to_state(char *cstate) {
 EStates state = eStateMax;

 if (strstr (cstate, "member")) {
  state = eMemberState;
 } else if (strstr (cstate, "pointer")) {
  state = ePointerState;
 } else if (strstr (cstate, "union")) {
  state = eUnionState;
 } else if (strstr (cstate, "struct")) {
  state = eStructState;
 } else if (strstr (cstate, "unsigned")) {
  state = eUnsignedState;
 } else if (strstr (cstate, "short")) {
  state = eShortState;
 } else if (strstr (cstate, "long")) {
  state = eLongState;
 } else if (strstr (cstate, "char")) {
  state = eCharState;
 } else if (strstr (cstate, "modifier")) {
  state = eModifierState;
 } else if (strstr (cstate, "enum")) {
  state = eEnumState;
 } else if (strstr (cstate, "array")) {
  state = eArrayState;
 } else if (strstr (cstate, "onemethod")) {
  state = eOneMethodState;
 } else if (strstr (cstate, "void")) {
  state = eVoidState;
 } else if (strstr (cstate, "double")) {
  state = eDoubleState;
 } else if (strstr (cstate, "bitfield")) {
  state = eBitfieldState;
 }

 return state;
}
