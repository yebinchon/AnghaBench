
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TBlockState ;
__attribute__((used)) static const char *
BlockStateAsString(TBlockState blockState)
{
 switch (blockState)
 {
  case 143:
   return "DEFAULT";
  case 137:
   return "STARTED";
  case 144:
   return "BEGIN";
  case 140:
   return "INPROGRESS";
  case 141:
   return "IMPLICIT_INPROGRESS";
  case 139:
   return "PARALLEL_INPROGRESS";
  case 142:
   return "END";
  case 147:
   return "ABORT";
  case 146:
   return "ABORT_END";
  case 145:
   return "ABORT_PENDING";
  case 138:
   return "PREPARE";
  case 132:
   return "SUBBEGIN";
  case 130:
   return "SUBINPROGRESS";
  case 129:
   return "SUBRELEASE";
  case 131:
   return "SUBCOMMIT";
  case 136:
   return "SUBABORT";
  case 135:
   return "SUBABORT_END";
  case 134:
   return "SUBABORT_PENDING";
  case 128:
   return "SUBRESTART";
  case 133:
   return "SUBABORT_RESTART";
 }
 return "UNRECOGNIZED";
}
