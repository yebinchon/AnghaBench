
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
__attribute__((used)) static const char *cmd_to_pf_definition(ut32 cmd) {
 switch (cmd) {
 case 177:
  return "mach0_build_version_command";
 case 176:
  return "mach0_code_signature_command";
 case 175:
  return "mach0_data_in_code_command";
 case 173:
 case 172:
  return "mach0_dyld_info_only_command";
 case 174:
  return ((void*)0);
 case 171:
  return ((void*)0);
 case 170:
  return "mach0_dysymtab_command";
 case 169:
  return "mach0_encryption_info_command";
 case 168:
  return "mach0_encryption_info64_command";
 case 167:
  return "mach0_function_starts_command";
 case 166:
  return ((void*)0);
 case 163:
  return "mach0_id_dylib_command";
 case 162:
  return "mach0_id_dylinker_command";
 case 165:
  return ((void*)0);
 case 164:
  return ((void*)0);
 case 159:
  return ((void*)0);
 case 160:
  return ((void*)0);
 case 156:
  return "mach0_load_dylinker_command";
 case 161:
 case 155:
 case 157:
  return "mach0_dylib_command";
 case 158:
  return ((void*)0);
 case 154:
  return "mach0_entry_point_command";
 case 153:
  return ((void*)0);
 case 152:
  return ((void*)0);
 case 151:
  return ((void*)0);
 case 150:
  return ((void*)0);
 case 149:
  return ((void*)0);
 case 148:
  return ((void*)0);
 case 147:
  return ((void*)0);
 case 146:
  return "mach0_rpath_command";
 case 145:
  return "mach0_segment";
 case 144:
  return "mach0_segment64";
 case 143:
  return "mach0_segment_split_info_command";
 case 142:
  return "mach0_source_version_command";
 case 140:
  return ((void*)0);
 case 138:
  return ((void*)0);
 case 141:
  return ((void*)0);
 case 139:
  return ((void*)0);
 case 136:
  return "mach0_symtab_command";
 case 137:
  return ((void*)0);
 case 134:
  return ((void*)0);
 case 132:
  return "mach0_uuid_command";
 case 130:
 case 131:
 case 129:
 case 128:
  return "mach0_version_min_command";
 case 135:
  return ((void*)0);
 case 133:
  return "mach0_unixthread_command";
 }
 return ((void*)0);
}
