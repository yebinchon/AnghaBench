
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OBS_OUTPUT_CONNECT_FAILED ;
 int OBS_OUTPUT_DISCONNECTED ;
 int OBS_OUTPUT_ERROR ;
 int OBS_OUTPUT_SUCCESS ;

__attribute__((used)) static int _ftl_error_to_obs_error(int status)
{


 switch (status) {
 case 133:
  return OBS_OUTPUT_SUCCESS;
 case 137:
 case 146:
 case 147:
 case 151:
 case 145:
 case 144:
 case 156:
 case 136:
 case 139:
 case 135:
 case 140:
 case 143:
  return OBS_OUTPUT_ERROR;
 case 153:
 case 149:
 case 150:
 case 130:
 case 141:
 case 132:
 case 155:
 case 128:
 case 134:
 case 154:
 case 152:
 case 138:
 case 148:
  return OBS_OUTPUT_CONNECT_FAILED;
 case 142:
  return OBS_OUTPUT_DISCONNECTED;
 case 129:
  return OBS_OUTPUT_SUCCESS;
 case 131:
 default:

  return OBS_OUTPUT_ERROR;
 }
}
