
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
__attribute__((used)) static const char *cmd_to_string(ut32 cmd) {
 switch (cmd) {
 case 175:
  return "LC_DATA_IN_CODE";
 case 176:
  return "LC_CODE_SIGNATURE";
 case 146:
  return "LC_RPATH";
 case 134:
  return "LC_TWOLEVEL_HINTS";
 case 152:
  return "LC_PREBIND_CKSUM";
 case 145:
  return "LC_SEGMENT";
 case 144:
  return "LC_SEGMENT_64";
 case 136:
  return "LC_SYMTAB";
 case 137:
  return "LC_SYMSEG";
 case 170:
  return "LC_DYSYMTAB";
 case 151:
  return "LC_PREBOUND_DYLIB";
 case 148:
  return "LC_ROUTINES";
 case 147:
  return "LC_ROUTINES_64";
 case 140:
  return "LC_SUB_FRAMEWORK";
 case 138:
  return "LC_SUB_UMBRELLA";
 case 141:
  return "LC_SUB_CLIENT";
 case 139:
  return "LC_SUB_LIBRARY";
 case 167:
  return "LC_FUNCTION_STARTS";
 case 171:
  return "LC_DYLIB_CODE_SIGN_DRS";
 case 153:
  return "LC_NOTE";
 case 177:
  return "LC_BUILD_VERSION";
 case 130:
  return "LC_VERSION_MIN_MACOSX";
 case 131:
  return "LC_VERSION_MIN_IPHONEOS";
 case 129:
  return "LC_VERSION_MIN_TVOS";
 case 128:
  return "LC_VERSION_MIN_WATCHOS";
 case 173:
  return "LC_DYLD_INFO";
 case 172:
  return "LC_DYLD_INFO_ONLY";
 case 174:
  return "LC_DYLD_ENVIRONMENT";
 case 142:
  return "LC_SOURCE_VERSION";
 case 154:
  return "LC_MAIN";
 case 132:
  return "LC_UUID";
 case 163:
  return "LC_ID_DYLIB";
 case 162:
  return "LC_ID_DYLINKER";
 case 161:
  return "LC_LAZY_LOAD_DYLIB";
 case 169:
  return "LC_ENCRYPTION_INFO";
 case 168:
  return "LC_ENCRYPTION_INFO_64";
 case 143:
  return "LC_SEGMENT_SPLIT_INFO";
 case 149:
  return "LC_REEXPORT_DYLIB";
 case 159:
  return "LC_LINKER_OPTION";
 case 160:
  return "LC_LINKER_OPTIMIZATION_HINT";
 case 156:
  return "LC_LOAD_DYLINKER";
 case 157:
  return "LC_LOAD_DYLIB";
 case 155:
  return "LC_LOAD_WEAK_DYLIB";
 case 135:
  return "LC_THREAD";
 case 133:
  return "LC_UNIXTHREAD";
 case 158:
  return "LC_LOADFVMLIB";
 case 164:
  return "LC_IDFVMLIB";
 case 165:
  return "LC_IDENT";
 case 166:
  return "LC_FVMFILE";
 case 150:
  return "LC_PREPAGE";
 }
 return "";
}
