
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef int FILE ;


 scalar_t__ EOF ;
 int FLAG_BYTEORDER_NATIVE ;
 scalar_t__ MRB_DUMP_ALIGNMENT ;
 int MRB_DUMP_INVALID_ARGUMENT ;
 int MRB_DUMP_OK ;
 int MRB_DUMP_WRITE_FAULT ;
 int dump_bigendian_p (int) ;
 int dump_flags (int,int ) ;
 int dump_irep (int *,int *,int,int**,size_t*) ;
 scalar_t__ fprintf (int *,char*,...) ;
 scalar_t__ fputs (char*,int *) ;
 int mrb_free (int *,int*) ;

int
mrb_dump_irep_cfunc(mrb_state *mrb, mrb_irep *irep, uint8_t flags, FILE *fp, const char *initname)
{
  uint8_t *bin = ((void*)0);
  size_t bin_size = 0, bin_idx = 0;
  int result;

  if (fp == ((void*)0) || initname == ((void*)0) || initname[0] == '\0') {
    return MRB_DUMP_INVALID_ARGUMENT;
  }
  flags = dump_flags(flags, FLAG_BYTEORDER_NATIVE);
  result = dump_irep(mrb, irep, flags, &bin, &bin_size);
  if (result == MRB_DUMP_OK) {
    if (!dump_bigendian_p(flags)) {
      if (fprintf(fp, "/* dumped in little endian order.\n"
                  "   use `mrbc -E` option for big endian CPU. */\n") < 0) {
        mrb_free(mrb, bin);
        return MRB_DUMP_WRITE_FAULT;
      }
    }
    else {
      if (fprintf(fp, "/* dumped in big endian order.\n"
                  "   use `mrbc -e` option for better performance on little endian CPU. */\n") < 0) {
        mrb_free(mrb, bin);
        return MRB_DUMP_WRITE_FAULT;
      }
    }
    if (fprintf(fp, "#include <stdint.h>\n") < 0) {
      mrb_free(mrb, bin);
      return MRB_DUMP_WRITE_FAULT;
    }
    if (fprintf(fp,
          "#ifdef __cplusplus\n"
          "extern const uint8_t %s[];\n"
          "#endif\n"
          "const uint8_t\n"
          "#if defined __GNUC__\n"
          "__attribute__((aligned(%u)))\n"
          "#elif defined _MSC_VER\n"
          "__declspec(align(%u))\n"
          "#endif\n"
          "%s[] = {",
          initname,
          (uint16_t)MRB_DUMP_ALIGNMENT, (uint16_t)MRB_DUMP_ALIGNMENT, initname) < 0) {
      mrb_free(mrb, bin);
      return MRB_DUMP_WRITE_FAULT;
    }
    while (bin_idx < bin_size) {
      if (bin_idx % 16 == 0) {
        if (fputs("\n", fp) == EOF) {
          mrb_free(mrb, bin);
          return MRB_DUMP_WRITE_FAULT;
        }
      }
      if (fprintf(fp, "0x%02x,", bin[bin_idx++]) < 0) {
        mrb_free(mrb, bin);
        return MRB_DUMP_WRITE_FAULT;
      }
    }
    if (fputs("\n};\n", fp) == EOF) {
      mrb_free(mrb, bin);
      return MRB_DUMP_WRITE_FAULT;
    }
  }

  mrb_free(mrb, bin);
  return result;
}
